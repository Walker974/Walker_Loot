--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

CreateThread(function()
    while (true) do
        Wait(1)
        if (NetworkIsPlayerActive(PlayerId())) then
            TriggerEvent('join')
            break
        end
    end
end)


AddEventHandler('join', function()
    TriggerServerEvent('Tenzia_marketmission:newPlayer', GetPlayerServerId(PlayerId()))
end)