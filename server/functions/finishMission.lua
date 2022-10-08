--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@param player_src number
---@param mission_id number
_Tenezia_Market_Mission_Server.FinishMission = function(player_src, mission_id)
    if (not (player_src) or not (mission_id)) then
        print("FinishMission: player_src or mission_id is nil")
        return
    end
    local _player <const> = ESX.GetPlayerFromId(player_src)
    if (not (_player)) then
        print("FinishMission: Player is nil")
        return
    end
    local _mission <const> = _Tenezia_Market_Mission:getMission(mission_id)
    if (not (_mission)) then
        print("FinishMission: Mission is nil")
        return
    end
    --- Give mission reward to player
    print(json.encode(_mission.items))
    for _, item in pairs(_mission.items) do
        _player.addInventoryItem(item, 1)
    end
    --- Delete mission & Prop
    DeleteEntity(_mission['objects'])
    _Tenezia_Market_Mission:deleteMission(mission_id)
end

---@param player_src number
---@param mission_id number
_Tenezia_Market_Mission_Server.FinishMission_FO = function(player_src, mission_id)
    if (not (player_src) or not (mission_id)) then
        print("FinishMission_FO: player_src or mission_id is nil")
        return
    end
    local _player <const> = ESX.GetPlayerFromId(player_src)
    if (not (_player)) then
        print("FinishMission_FO: Player is nil")
        return
    end
    local _mission <const> = _Tenezia_Market_Mission:getMission(mission_id)
    if (not (_mission)) then
        print("FinishMission_FO: Mission is nil")
        return
    end
    --- Send Notification
    TriggerClientEvent('esx:showNotification', player_src, "Vous avez confisqué la marchandise")
    --- Delete mission
    DeleteEntity(_mission['objects'])
    _Tenezia_Market_Mission:deleteMission(mission_id)
end