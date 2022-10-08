--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Start Orga Mission
---@return void
_Tenezia_Market_Mission_Server.StartOrgaMission = function()
    local mission = _Tenezia_Market_Mission:createMission('Orgas', _Tenezia_Market_Mission_Server.getRandomOrgaReward(), _Tenezia_Market_Mission_Server.getRandomZoneOrga(), _Tenezia_Market_Mission_Server.Mission.Orgas.Allowed);
    local get_mission = _Tenezia_Market_Mission:getMission(mission)
    _Tenezia_Market_Mission_Server.CreateObject_orgas(_Tenezia_Market_Mission_Server.Mission.Prop_name, get_mission.position, get_mission.id)
    _Tenezia_Market_Mission_Server.Send_Orga_Notif_Begin(get_mission.id)
    Wait(_Tenezia_Market_Mission_Server.Mission.Wait_interval)
    _Tenezia_Market_Mission_Server.Send_FO_Notif_Begin(get_mission.id)
end

--- Start Gang Mission
---@return void
_Tenezia_Market_Mission_Server.StartGangMission = function()
    local mission = _Tenezia_Market_Mission:createMission('Gangs', _Tenezia_Market_Mission_Server.getRandomGangReward(), _Tenezia_Market_Mission_Server.getRandomZoneGang(), _Tenezia_Market_Mission_Server.Mission.Gangs.Allowed);
    local get_mission = _Tenezia_Market_Mission:getMission(mission)
    _Tenezia_Market_Mission_Server.CreateObject_gangs(_Tenezia_Market_Mission_Server.Mission.Prop_name, get_mission.position, get_mission.id)
    _Tenezia_Market_Mission_Server.Send_Gang_Notif_Begin(get_mission.id)
    Wait(_Tenezia_Market_Mission_Server.Mission.Wait_interval)
    _Tenezia_Market_Mission_Server.Send_FO_Notif_Begin(get_mission.id)
end



RegisterCommand('startorga', function()
    _Tenezia_Market_Mission_Server.StartOrgaMission()
end)