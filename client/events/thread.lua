--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

RegisterNetEvent('Tenezia_Market_Mission:CreateObject')
AddEventHandler('Tenezia_Market_Mission:CreateObject', function(position, id, type)
    if (not (position) or not (id) or not (type)) then
        print('Error: Missing arguments')
        return
    end
    _Tenezia_Market_Mission_Client.BeginThread(position, id, type)
end)

_Tenezia_Market_Mission_Client.BeginThread = function(pos, id, type)
    CreateThread(function()
        while (true) do
            local timer = 850
            local player = PlayerPedId()
            local playerPos = GetEntityCoords(player)
            local distance = #(playerPos - vector3(pos.x, pos.y, pos.z))
            if (distance <= 10.5) then
                timer = 5
                ESX.ShowHelpNotification('Appuyez sur ~INPUT_CONTEXT~ pour récupérer la marchandise')
                if (IsControlJustPressed(0, 38)) then
                    TriggerServerEvent('Tenezia_Market_Mission:Mission:Success', id, type)
                    break;
                end
            end
            Wait(timer)
        end
    end)
end