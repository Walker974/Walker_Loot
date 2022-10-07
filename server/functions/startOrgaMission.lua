--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

_Tenezia_Market_Mission_Server.StartOrgaMission = function()
    local mission = _Tenezia_Market_Mission:createMission('Orgas', _Tenezia_Market_Mission_Server.getRandomOrgaReward(), _Tenezia_Market_Mission_Server.getRandomZoneOrga(), _Tenezia_Market_Mission_Server.Mission.Orgas.Allowed);
    local get_mission = _Tenezia_Market_Mission:getMission(mission)
    _Tenezia_Market_Mission_Server.CreateObject_orgas("prop_boxpile_07d", get_mission.position, get_mission.id)
    _Tenezia_Market_Mission_Server.Send_Orga_Notif_Begin(get_mission.id)
    Wait(5000)
    _Tenezia_Market_Mission_Server.Send_FO_Notif_Begin(get_mission.id)
end