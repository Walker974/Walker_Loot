--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@type boolean
local verify_fo = true
RegisterNetEvent('Tenezia_Market_Mission:Mission:Success')
---@param id number
---@param type string
AddEventHandler('Tenezia_Market_Mission:Mission:Success', function(id, type)
    if (not (id) or not (type)) then
        print('Error: Missing arguments')
        return
    end
    local _src <const> = source
    if (not (_src)) then
        print('Source is nil')
        return
    end
    local _player <const> = ESX.GetPlayerFromId(_src)
    if (not (_player)) then
        print('Player is nil')
        return
    end
    --- Get Mission
    local _mission <const> = _Tenezia_Market_Mission:getMission(id)
    if (not (_mission)) then
        print('Mission is nil')
        return
    end
    --- Get Player Job
    local _player_job <const> = _player.job.name
    if (not (_player_job)) then
        print('Player Job is nil')
        return
    end
    --- Check if player job is allowed
    if (type == ('orgas')) then
        for _, job in pairs(_Tenezia_Market_Mission_Server.Mission.Orgas.Allowed) do
            if (_player_job == job) then
                _Tenezia_Market_Mission_Server.Send_Orga_Notif_Finish(id)
                _Tenezia_Market_Mission_Server.Send_FO_Notif_Finish(id, false)
                _Tenezia_Market_Mission_Server.FinishMission(_src, id)
                verify_fo = false
                break;
            end
        end
    elseif (type == ('gangs')) then
        for _, job in pairs(_Tenezia_Market_Mission_Server.Mission.Gangs.Allowed) do
            if (_player_job == job) then
                _Tenezia_Market_Mission_Server.Send_Gang_Notif_Finish(id)
                _Tenezia_Market_Mission_Server.Send_FO_Notif_Finish(id, false)
                _Tenezia_Market_Mission_Server.FinishMission(_src, id)
                verify_fo = false
                break;
            end
        end
    else
        print('Error: Invalid type')
        return
    end
    if (verify_fo) then
        for _, fo_player in pairs(_Tenezia_Market_Mission_Server.Mission.FO) do
            if (_player_job == fo_player) then
                verify_fo = false
                _Tenezia_Market_Mission_Server.Send_FO_Notif_Finish(id, true)
                if (type == ('orgas')) then
                    _Tenezia_Market_Mission_Server.Send_Orga_Notif_Finish(id)
                elseif (type == ('gangs')) then
                    _Tenezia_Market_Mission_Server.Send_Orga_Notif_Finish(id)
                end
                _Tenezia_Market_Mission_Server.FinishMission_FO(_src, id)
                break;
            end
        end
        return;
    end
end)