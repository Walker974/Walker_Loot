--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Create Object for Orgas Mission
---@param prop_name string
---@param position table
---@param id number
---@return void
---@public
_Tenezia_Market_Mission_Server.CreateObject_orgas = function(prop_name, position, id)
    if (not (prop_name) or not (position) or not (id)) then
        print('Error: Missing arguments')
        return
    end
    local prop = CreateObject(GetHashKey(prop_name), position.x, position.y, position.z, true, true, true)
    local get_mission = _Tenezia_Market_Mission:getMission(id)
    if (get_mission == nil) then
        print('Error: Mission not found')
        return
    end
    get_mission['objects'] = prop
    FreezeEntityPosition(prop, true)
    local receivers = {}
    for _, orgas_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.Orgas) do
        table.insert(receivers, orgas_players)
    end
    for _, fo_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.FO) do
        table.insert(receivers, fo_players)
    end
    --- Send Event to receivers
    for _, receiver in pairs(receivers) do
        TriggerClientEvent('Tenezia_Market_Mission:CreateObject', receiver, position, id, 'orgas')
    end
end

--- Create Object for Gangs Mission
---@param prop_name string
---@param position table
---@param id number
---@return void
---@public
_Tenezia_Market_Mission_Server.CreateObject_gangs = function(prop_name, position, id)
    if (not (prop_name) or not (position) or not (id)) then
        print('Error: Missing arguments')
        return
    end
    local prop = CreateObject(GetHashKey(prop_name), position.x, position.y, position.z, true, true, true)
    local get_mission = _Tenezia_Market_Mission:getMission(id)
    if (get_mission == nil) then
        print('Error: Mission not found')
        return
    end
    get_mission['objects'] = prop
    FreezeEntityPosition(prop, true)
    local receivers = {}
    for _, gangs_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.Gangs) do
        table.insert(receivers, gangs_players)
    end
    for _, fo_players in pairs(_Tenezia_Market_Mission_Server.allowed_players.FO) do
        table.insert(receivers, fo_players)
    end
    --- Send Event to receivers
    for _, receiver in pairs(receivers) do
        TriggerClientEvent('Tenezia_Market_Mission:CreateObject', receiver, position, id, 'gangs')
    end
end