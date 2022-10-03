--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@param mission_id number
---@return void
_Tenezia_Market_Mission_Server.Send_Gang_Notif_Begin = function(mission_id)
    if (not (mission_id)) then
        return
    end
    local mission = _Tenezia_Market_Mission:getMission(mission_id)
    if (not (mission)) then
        return
    end
    for _, gangs_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.Gangs) do
        TriggerClientEvent('esx:showNotification', gangs_players, "On vient de lacher un largage !")
    end
end

---@param mission_id number
---@return void
_Tenezia_Market_Mission_Server.Send_Gang_Notif_Finish = function(mission_id)
    if (not (mission_id)) then
        return
    end
    local mission = _Tenezia_Market_Mission:getMission(mission_id)
    if (not (mission)) then
        return
    end
    for _, gangs_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.Gangs) do
        TriggerClientEvent('esx:showNotification', gangs_players, "Le largage est terminé !")
    end
end