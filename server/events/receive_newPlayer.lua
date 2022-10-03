--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

local continue = true
local verify_fo = false

RegisterNetEvent('Tenzia_marketmission:newPlayer')
AddEventHandler('Tenzia_marketmission:newPlayer', function(id)
    if (not (id)) then
        return
    end
    local player = ESX.GetPlayerFromId(id)
    if (not (player)) then
        print('Player not found')
        return
    end
    --- Verify Orgas
    for _, v in pairs(_Tenezia_Market_Mission_Server.Mission.Orgas.Allowed) do
        if (player.job.name == v) then
            table.insert(_Tenezia_Market_Mission_Server.allowed_players.Orgas, id)
            continue = false
            break
        end
    end
    --- Verify Gangs
    if (continue) then
        for _, v in pairs(_Tenezia_Market_Mission_Server.Mission.Gangs.Allowed) do
            if (player.job.name == v) then
                table.insert(_Tenezia_Market_Mission_Server.allowed_players.Gangs, id)
                continue = true
                verify_fo = true
                break
            end
        end
    end
    --- Verify FO
    if (verify_fo) then
        for _, v in pairs(_Tenezia_Market_Mission.FO) do
            if (player.job.name == v) then
                table.insert(_Tenezia_Market_Mission_Server.allowed_players.FO, id)
                continue = false
                break
            else
                print('Player not allowed')
                break
            end
        end
        return
    end
end)