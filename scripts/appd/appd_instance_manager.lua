local AppInstanceMgr = class("AppInstanceMgr", BinLogObject)

function AppInstanceMgr:ctor()
	
end

function AppInstanceMgr:checkIfCanEnter(mapid)

	local config = tb_map_vip[mapid]

	-- TODO:判断VIP是否满足条件
	local player = self:getOwner()
	if not player:isVIP(config.vip) then
		outFmtError("vip level not satisfy")
		return
	end
	
	-- 判断进入次数是否足够
	-- 每个信息4个byte[0:通关难度,1:当前难度,2:挑战次数,3:购买次数]
	
	local indx = INSTANCE_INT_FIELD_VIP_START + config.indx - 1
	local times = self:GetByte(indx, 2)
	local x 	= config.x
	local y 	= config.y
	
	if times == config.times then
		outFmtError("try time is not fit for mapid %d", mapid)
		return
	end
	
	self:AddByte(indx, 2, 1)
	
	local hard = self:GetHard(mapid, player)
	-- 发起传送
	call_appd_teleport(player:GetScenedFD(), player:GetGuid(), x, y, mapid, ""..hard)
end

function AppInstanceMgr:GetHard(mapid, playerInfo)
	
	playerInfo = playerInfo or self:getOwner()
	local config = tb_map_vip[mapid]
	local force = playerInfo:GetForce()
	local hard = 0
	
	for i = 1, #config.forces do
		if force >= config.forces[ i ] then
			hard = i
		end
	end
	
	return hard
end


-- 获得玩家guid
function AppInstanceMgr:getPlayerGuid()
	--物品管理器guid转玩家guid
	if not self.owner_guid then
		self.owner_guid = guidMgr.replace(self:GetGuid(), guidMgr.ObjectTypePlayer)
	end
	return self.owner_guid
end

--获得副本管理器的拥有者
function AppInstanceMgr:getOwner()
	local playerguid = self:getPlayerGuid()
	return app.objMgr:getObj(playerguid)
end

return AppInstanceMgr