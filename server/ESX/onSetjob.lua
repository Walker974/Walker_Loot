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
        print('Error: job is nil')
        return;
    end
    TriggerEvent('playerDropped')
    TriggerEvent('Tenzia_marketmission:newPlayer', source)
end)