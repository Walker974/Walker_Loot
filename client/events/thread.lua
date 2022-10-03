--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

local loop = false

RegisterNetEvent('Tenezia_Market_Mission:CreateObject')
AddEventHandler('Tenezia_Market_Mission:CreateObject', function(position, bool, id)
    if (not (position) or (bool == nil) or not (id)) then
        print('Error: Missing arguments')
        return
    end
    _Tenezia_Market_Mission_Client.BeginThread(position, bool, id)
end)

_Tenezia_Market_Mission_Client.BeginThread = function(pos, bool, id)
    CreateThread(function()
        while (bool) do
            local timer = 850
            local player = PlayerPedId()
            local playerPos = GetEntityCoords(player)
            local distance = #(playerPos - pos)
            if (distance <= 1.5) then
                timer = 5
                ESX.ShowHelpNotification('Appuyez sur ~INPUT_CONTEXT~ pour récupérer la marchandise')
                if (IsControlJustPressed(0, 38)) then

                end
            end
        end
    end)
end