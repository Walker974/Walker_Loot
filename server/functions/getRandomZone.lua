--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Get Random Zone
---@return table
---@public
_Tenezia_Market_Mission_Server.getRandomZoneOrga = function()
    local zone = _Tenezia_Market_Mission_Server.zones.Orgas[math.random(1, #_Tenezia_Market_Mission_Server.zones.Orgas)]
    return (zone)
end

_Tenezia_Market_Mission_Server.getRandomZoneGang = function()
    local zone = _Tenezia_Market_Mission_Server.zones.Gangs[math.random(1, #_Tenezia_Market_Mission_Server.zones.Gangs)]
    return (zone)
end