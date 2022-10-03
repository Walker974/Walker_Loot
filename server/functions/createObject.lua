--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Create Object
---@param prop_name string
---@param position table
_Tenezia_Market_Mission_Server.CreateObject = function(prop_name, position, id)
    if (not (prop_name) or not (position) or not (id)) then
        print('Error: Missing arguments')
        return
    end
    local prop = CreateObject(GetHashKey(prop_name), position.x, position.y, position.z, true, true, true)
    SetEntityAsMissionEntity(prop, true, true)
    FreezeEntityPosition(prop, true)
    SetEntityInvincible(prop, true)
    SetEntityCollision(prop, false, false)
    ---@type boolean
    local begin = true
    TriggerClientEvent('Tenezia_Market_Mission:CreateObject', -1, position, begin, id)
end