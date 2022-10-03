--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Get Random Orga Mission Reward
---@return table
---@public
_Tenezia_Market_Mission_Server.getRandomOrgaReward = function()
    local reward = _Tenezia_Market_Mission_Server.Mission.Orgas.Rewards[math.random(1, #_Tenezia_Market_Mission_Server.Mission.Orgas.Rewards)]
    return (reward)
end

--- Get Random Gang Mission Reward
---@return table
---@public
_Tenezia_Market_Mission_Server.getRandomGangReward = function()
    local reward = _Tenezia_Market_Mission_Server.Mission.Gangs.Rewards[math.random(1, #_Tenezia_Market_Mission_Server.Mission.Gangs.Rewards)]
    return (reward)
end