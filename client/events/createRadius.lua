--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Create Blip for radius

RegisterNetEvent('Tenezia_Market_Mission:Radius:Create_FO')
AddEventHandler('Tenezia_Market_Mission:Radius:Create_FO', function(id, position, radius)
    if (not (id) or not (position) or not (radius)) then
        print('Error : Missing arguments')
        return
    end
    local blip = AddBlipForRadius(position.x, position.y, position.z, radius)
    SetBlipColour(blip, _Tenezia_Market_Mission_Client.Blips_For_Radius.color)
    SetBlipAlpha(blip, _Tenezia_Market_Mission_Client.Blips_For_Radius.alpha)

    _Tenezia_Market_Mission_Client.Blips_For_Radius.Stock[id] = blip
end)