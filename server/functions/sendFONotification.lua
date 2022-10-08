--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@param mission_id number
---@return void
_Tenezia_Market_Mission_Server.Send_FO_Notif_Begin = function(mission_id)
    if (not (mission_id)) then
        return
    end
    local mission = _Tenezia_Market_Mission:getMission(mission_id)
    if (not (mission)) then
        return
    end
    for _, fo_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.FO) do
        TriggerClientEvent('esx:showAdvancedNotification', fo_players, "Central", "Largage Marchandise", "On Vient de laisser un largage", "CHAR_CALL911", 5)
        TriggerClientEvent('Tenezia_Market_Mission:Radius:Create_FO', fo_players, mission_id, mission.position, _Tenezia_Market_Mission_Server.Mission.default_radius)
    end
end


---@param mission_id number
---@param bool boolean
---@return void
_Tenezia_Market_Mission_Server.Send_FO_Notif_Finish = function(mission_id, bool)
    if (not (mission_id) or (bool == nil)) then
        return
    end
    local mission = _Tenezia_Market_Mission:getMission(mission_id)
    if (not (mission)) then
        return
    end
    for _, fo_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.FO) do
        if (not (bool)) then
            TriggerClientEvent('esx:showAdvancedNotification', fo_players, "Central", "Largage Marchandise", "Le Largage a été pris !", "CHAR_CALL911", 5)
        end
        TriggerClientEvent('Tenezia_Market_Mission:Radius:Delete_FO', fo_players, mission_id)
    end
end