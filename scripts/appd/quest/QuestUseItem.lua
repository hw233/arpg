local QuestUseItem = class("QuestUseItem", AbstractQuest)

IQuestUseItem = QuestUseItem:new{}

function QuestUseItem:ctor()
	
end

function QuestUseItem:OnInit(playerInfo, start, offset)
	
end

-- ���Ŀ��ֵ
function QuestUseItem:GetTargetValue(targetInfo)
	return targetInfo[ 3 ]
end

-- ���½���, ���Ŀ����ɷ���true
function QuestUseItem:OnUpdate(quest_ptr, start, offset, params)
	return self:OnUpdateModeObjectTimes(quest_ptr, start, offset, params)
end

return QuestUseItem