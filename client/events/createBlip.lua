--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

RegisterNetEvent('Tenezia_Market_Mission:Blip:Create')
---@param id number
---@param position table
AddEventHandler('Tenezia_Market_Mission:Blip:Create', function(id, position)
    if (not (id) or not (position)) then
        print('Error : Missing arguments')
        return
    end
    local blip = AddBlipForCoord(position.x, position.y, position.z)
    SetBlipSprite(blip, _Tenezia_Market_Mission_Client.Blips.sprite)
    SetBlipDisplay(blip, _Tenezia_Market_Mission_Client.Blips.display)
    SetBlipColour(blip, _Tenezia_Market_Mission_Client.Blips.color)
    SetBlipScale(blip, _Tenezia_Market_Mission_Client.Blips.scale)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(_Tenezia_Market_Mission_Client.Blips.name)
    EndTextCommandSetBlipName(blip)

    _Tenezia_Market_Mission_Client.Blips.Stock[id] = blip
end)