InstanceResBase = class("InstanceResBase", InstanceInstBase)

InstanceResBase.Name = "InstanceResBase"
InstanceResBase.exit_time = 10
--刷新坐标偏移值
InstanceResBase.RefreshOffset = 3;

function InstanceResBase:ctor(  )
	
end

--初始化脚本函数
function InstanceResBase:OnInitScript(  )
	
	InstanceInstBase.OnInitScript(self) --调用基类
	
	if self:GetMapQuestEndTime() > 0 then
		return
	end
	
	self:parseGeneralId()
	
	local id = self:GetIndex()
	local config = tb_instance_res[ id ]
	local time	= config.time	
	local questTable = config.quests
	
	self:InitRes(config)
	
	self:SetBatch(config.refresnum)

	-- 加副本任务
	self:OnAddQuests(questTable)
	-- 加任务任务时间
	local timestamp = os.time() + time
	
	self:SetMapQuestEndTime(timestamp)
	-- 副本时间超时回调
	self:AddTimeOutCallback(self.Time_Out_Fail_Callback, timestamp)
	
	print("------------")
end

function InstanceResBase:InitRes(config)
	self:SetRandomMonsterIndex(config.refresnum)
end

--设置每波怪刷新的次序
function InstanceResBase:SetRandomMonsterIndex(num)
	local tab = GetRandomIndexTable(num,num)
	for i=1,#tab do
		if i <= 4 then
			self:SetByte(MAP_INT_FIELD_RESERVE2,i-1,tab[i])
		elseif i <= 8 then
			self:SetByte(MAP_INT_FIELD_RESERVE3,i-5,tab[i])
		end
		--print(i-1,tab[i])
	end
end

function InstanceResBase:GetRandomMonsterIndex(idx)
	if idx <= 3 then
		return self:GetByte(MAP_INT_FIELD_RESERVE2,idx)
	elseif idx <= 7 then
		return self:GetByte(MAP_INT_FIELD_RESERVE3,idx-4)
	end
	
	return 0
end

--设置每波怪的数量
function InstanceResBase:SetKillTarget(val)
	self:SetUInt16(MAP_INT_FIELD_RESERVE1,0,val);
end
function InstanceResBase:SubKillTarget()
	self:SubUInt16(MAP_INT_FIELD_RESERVE1,0,1);
end
function InstanceResBase:GetKillTarget()
	return self:GetUInt16(MAP_INT_FIELD_RESERVE1,0);
end
--设置怪的波数
function InstanceResBase:SetBatch(val)
	return self:SetUInt16(MAP_INT_FIELD_RESERVE1,1,val);
end

function InstanceResBase:SubBatch()
	return self:SubUInt16(MAP_INT_FIELD_RESERVE1,1,1);
end

function InstanceResBase:GetBatch()
	return self:GetUInt16(MAP_INT_FIELD_RESERVE1,1);
end


function InstanceResBase:GetIndex()
	return self:GetUInt32(TRIAL_INSTANCE_FIELD_ID)
end

function InstanceResBase:parseGeneralId()
	
	local generalId	= self:GetMapGeneralId()
	outFmtDebug("generalId %s",generalId)
	local params = string.split(generalId, ':')
	local indx = tonumber(params[ 1 ])
	
	self:SetUInt32(TRIAL_INSTANCE_FIELD_ID, indx)
end


--当副本状态发生变化时间触发
function InstanceResBase:OnSetState(fromstate,tostate)
	if tostate == self.STATE_FINISH or tostate == self.STATE_FAIL then
		self:RemoveTimeOutCallback(self.Time_Out_Fail_Callback)
		
		--10s后结束副本
		local timestamp = os.time() + InstanceResBase.exit_time
		
		self:AddTimeOutCallback(self.Leave_Callback, timestamp)
		self:SetMapEndTime(timestamp)
	end
end

-- 判断是否能退出副本
function InstanceResBase:DoPlayerExitInstance(player)
	return 1	--返回1的话为正常退出，返回0则不让退出
end

--玩家加入地图
function InstanceResBase:OnJoinPlayer(player)
	
	InstanceInstBase.OnJoinPlayer(self, player)
	
	local playerInfo = UnitInfo:new{ptr = player}
	if not playerInfo:IsAlive() then
		--死亡了还进来，直接弹出去
		unitLib.Respawn(player, RESURRECTION_SPAWNPOINT, 100)
		mapLib.ExitInstance(self.ptr, player)
		self:SetMapState(self.STATE_FAIL)
	end
	
	-- 刷新怪物
	self:OnRefreshMonster(playerInfo)
	
end

--刷一波怪
function InstanceResBase:RefreshMonsterBatch(player)
	local batchIdx = self:GetBatch() - 1
	
	local tf,cnt = self:ApplyRefreshMonsterBatch(player,batchIdx)
	if not tf then
		return
	end
	
	outFmtDebug("RefreshMonsterBatch %d",cnt)
	
	self:SetKillTarget(cnt)
	self:SubBatch()
end

function InstanceResBase:ApplyRefreshMonsterBatch(player,batchIdx)
	outFmtDebug("ApplyRefreshMonsterBatch base")
	local batchPos = self:GetRandomMonsterIndex(batchIdx)

	if batchPos == 0 then
		return false,0
	end
	
	local id = self:GetIndex()
	local config = tb_instance_res[ id ]
	local entry = config.monster[batchPos]
	local plev = player:GetLevel()
	local bornPos = config.monsterInfo[batchPos]
	local cnt = config.monsternum
	

	for i = 1, cnt do
		local bornX = bornPos[ 1 ] + randInt(0, self.RefreshOffset)
		local bornY = bornPos[ 2 ] + randInt(0, self.RefreshOffset)

		local creature = mapLib.AddCreature(self.ptr, 
			{templateid = entry, x = bornX, y = bornY, level=plev, active_grid = true, alias_name = config.name, 
			ainame = "AI_res", npcflag = {}, attackType = 2})
		
	end
	return true,cnt
end

--刷怪
function InstanceResBase:OnRefreshMonster(player)
	
	-- 由于是进副本就刷的, 判断如果进入时间比开始时间开始时间超过2秒以上则不刷了
	-- 主要为了解决离线重连的问题
	local time = os.time()
	local startTime = self:GetMapCreateTime()
	if time - startTime > 2 then
		return
	end
	
	self:RefreshMonsterBatch(player)

end

--当玩家加入后触发
function InstanceResBase:OnAfterJoinPlayer(player)
	InstanceInstBase.OnAfterJoinPlayer(self, player)
end

--当玩家死亡后触发()
function InstanceResBase:OnPlayerDeath(player)
	-- 如果状态已经改变, 即使死了也不再更新时间
	if self:GetMapState() ~= self.STATE_START then
		return
	end
	self:SetMapState(self.STATE_FAIL)
end

--当玩家离开时触发
function InstanceResBase:OnLeavePlayer( player, is_offline)
	if not is_offline then
		self:RemoveTimeOutCallback(self.Time_Out_Fail_Callback)
		self:RemoveTimeOutCallback(self.Leave_Callback)
		self:SetMapEndTime(os.time())
	end
end

-- 当进度更新时调用
function InstanceResBase:AfterProcessUpdate(player)
	-- 判断副本是否
	if self:CheckQuestAfterTargetUpdate() then
		local id = self:GetIndex()
		-- 获得随机奖励dropIdTable
--		local dropIdTable = tb_map_trial[ id ].reward
		local playerInfo = UnitInfo:new{ptr = player}
		local idx = id * 100 + playerInfo:GetLevel()
		--outFmtDebug("tb_instance_reward idx %d",idx)
		local config = tb_instance_reward[idx]
		local tab = {}
		table.insert(tab,config.basereward[1])
		local randomReward = config.randomreward
		local rewardIdx = randInt(1, #randomReward)
		table.insert(tab,randomReward[rewardIdx])
		
		local data = self:RandomReward(player, {}, tab)
		
		self:SetMapReward(data)
		
		-- 设置状态
		self:SetMapState(self.STATE_FINISH)
		
		--发到应用服进行进入判断
		playerLib.SendToAppdDoSomething(player, SCENED_APPD_PASS_RES_INSTANCE, id)
	end
end

function InstanceResBase:MonsterDie(player)
	local playerInfo = UnitInfo:new{ptr = player}
	self:SubKillTarget()
	local num = self:GetKillTarget()
	if num == 0 then
		local batchNum = self:GetBatch()
		outFmtDebug("batchNum-----------------------%d",batchNum)
		if batchNum > 0 then
			outFmtDebug("shua xiao guai")
			self:RefreshMonsterBatch(playerInfo)
		else 
			--outFmtDebug("shua boss")
			self:RefreshBoss(playerInfo)
		end
	end
end
--刷新boss
function InstanceResBase:RefreshBoss(player)
	local id = self:GetIndex()
	local config = tb_instance_res[ id ]
	local entry = config.boss
	local plev = player:GetLevel()
	local bornPos = config.bosspos
	
	local creature = mapLib.AddCreature(self.ptr, {templateid = entry, x = bornPos[1], y = bornPos[2], level=plev, 
		active_grid = true, alias_name = config.name, ainame = "AI_resBoss", npcflag = {}})
	
end

function InstanceResBase:SetCreaturePro(creature, pros, bRecal, mul)
	--outFmtDebug("SetBaseAttrs -- ai res ")
	--creature:SetBaseAttrs(pros, bRecal, mul)
	local entry = creature:GetEntry()
	local lev = creature:GetLevel()
	local idx = entry * 100 + lev
	--outFmtDebug("SetBaseAttrs -- ai res %d--%d--%d",entry,lev,idx)
	local config = tb_creature_resource[idx]
	if config then
		--outFmtDebug("shu xing")
		Instance_base.SetCreaturePro(self, creature, config.pro, bRecal, mul)
	else 
		Instance_base.SetCreaturePro(self, creature, pros, bRecal, mul)
	end
	
end

-------------------------------- BOSS
AI_resBoss = class("AI_resBoss", AI_Base)
AI_resBoss.ainame = "AI_resBoss"
--死亡
function AI_resBoss:JustDied( map_ptr,owner,killer_ptr )	
	-- 先判断是不是试炼塔副本
	local mapid = mapLib.GetMapID(map_ptr)
	if tb_map[mapid].inst_sub_type ~= 2 then
		return
	end
	
	--local instanceInfo = InstanceResBase:new{ptr = map_ptr}
	local instanceInfo = Select_Instance_Script(mapid):new{ptr = map_ptr}
	
	-- 如果时间到了失败了 即使最后下杀死BOSS都没用
	if instanceInfo:GetMapState() ~= instanceInfo.STATE_START then
		return
	end
	
	AI_Base.JustDied(self,map_ptr,owner,killer_ptr)
	
	-- 更新杀怪进度
	local ownerInfo = UnitInfo:new {ptr = owner}
	local entry = ownerInfo:GetEntry()
	local updated = instanceInfo:OneMonsterKilled(entry)
	
	-- 更新进度
	if updated then
		instanceInfo:AfterProcessUpdate(killer_ptr)
	end
	
	return 0
end


----------------------------- 小怪----------------------------
AI_res = class("AI_res", AI_Base)
AI_res.ainame = "AI_res"
--死亡
function AI_res:JustDied( map_ptr,owner,killer_ptr )	
	--outFmtDebug("die die ")
	-- 先判断是不是试炼塔副本
	local mapid = mapLib.GetMapID(map_ptr)
	if tb_map[mapid].inst_sub_type ~= 2 then
		return
	end
	
	--local instanceInfo = InstanceResBase:new{ptr = map_ptr}
	
	local instanceInfo = Select_Instance_Script(mapid):new{ptr = map_ptr}
	
	-- 如果时间到了失败了 即使最后下杀死BOSS都没用
	if instanceInfo:GetMapState() ~= instanceInfo.STATE_START then
		return
	end
	
	AI_Base.JustDied(self,map_ptr,owner,killer_ptr)
	
	-- 更新杀怪进度
	local ownerInfo = UnitInfo:new {ptr = owner}
	local entry = ownerInfo:GetEntry()
	local updated = instanceInfo:OneMonsterKilled(entry)
	
	-- 更新进度
	if updated then
		instanceInfo:AfterProcessUpdate(killer_ptr)
	end
	instanceInfo:MonsterDie(killer_ptr)
	--outFmtDebug("die die ****************** ")
	return 0
end

return InstanceResBase