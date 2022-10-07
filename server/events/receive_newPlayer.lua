--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

RegisterNetEvent('Tenzia_marketmission:newPlayer')
AddEventHandler('Tenzia_marketmission:newPlayer', function(id)
    if (not (id)) then
        return
    end
    Wait(2000)
    local player = ESX.GetPlayerFromId(id)
    --- Verify Orgas
    for _, v in pairs(_Tenezia_Market_Mission_Server.Mission.Orgas.Allowed) do
        if (player.job.name == v) then
            table.insert(_Tenezia_Market_Mission_Server.allowed_players.Orgas, id)
            break
            return;
        end
    end
    --- Verify Gangs
    for _, v in pairs(_Tenezia_Market_Mission_Server.Mission.Gangs.Allowed) do
        if (player.job.name == v) then
            table.insert(_Tenezia_Market_Mission_Server.allowed_players.Gangs, id)
            break
            return
        end
    end
    --- Verify FO
    for _, v in pairs(_Tenezia_Market_Mission_Server.Mission.FO) do
        print(v, player.job.name)
        if (player.job.name == v) then
            table.insert(_Tenezia_Market_Mission_Server.allowed_players.FO, id)
            print(json.encode(_Tenezia_Market_Mission_Server.allowed_players))
            break
        end
    end
end)