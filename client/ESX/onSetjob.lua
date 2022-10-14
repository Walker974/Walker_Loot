--[[
  This file is part of Walker974 Scripts.
  Copyright (c) Walker974  - All Rights Reserved.
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    if (not (job)) then
        print('esx:setJob: job is nil')
        return
    end
    local player = PlayerId()
    if (not (player)) then
        print('esx:setJob: player is nil')
        return
    end
    TriggerServerEvent('Tenzia_marketmission:receive_newJob', GetPlayerServerId(player), job)
end)