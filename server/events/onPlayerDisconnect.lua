--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

local continue = true
local verify_fo = false

AddEventHandler('playerDropped', function()
    _Tenezia_Market_Mission_Server.deletePlayer()
end)

_Tenezia_Market_Mission_Server.deletePlayer = function()
    --- Get Player Source
    local _src <const> = source
    if (not (_src)) then
        print('Player not found')
        return
    end
    --- Verify Orgas
    for k, v in pairs(_Tenezia_Market_Mission_Server.allowed_players.Orgas) do
        if (v == _src) then
            table.remove(_Tenezia_Market_Mission_Server.allowed_players.Orgas, k)
            continue = false
            break
        end
    end
    --- Verify Gangs
    if (continue) then
        for k, v in pairs(_Tenezia_Market_Mission_Server.allowed_players.Gangs) do
            if (v == _src) then
                table.remove(_Tenezia_Market_Mission_Server.allowed_players.Gangs, k)
                --- return to initial value (continue)
                continue = true
                verify_fo = true
                break
            end
        end
    end
    --- Verify FO
    if (verify_fo) then
        for k, v in pairs(_Tenezia_Market_Mission_Server.allowed_players.FO) do
            if (v == _src) then
                table.remove(_Tenezia_Market_Mission_Server.allowed_players.FO, k)
                continue = true
                verify_fo = false
                break
            end
        end
    end
end