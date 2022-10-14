--[[
  This file is part of Walker974 Scripts.
  Copyright (c) Walker974  - All Rights Reserved.
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

RegisterNetEvent('Tenzia_marketmission:receive_newJob')
AddEventHandler('Tenzia_marketmission:receive_newJob', function(player_id)
   if ((not player_id) or not (new_job)) then
      print('Tenzia_marketmission:receive_newJob: player_id or new_job is nil')
      return
   end
    local _src = source
    if (not (_src)) then
        print('Tenzia_marketmission:receive_newJob: player_id is nil')
        return
    end
    if (player_id ~= _src) then
        print('Tenzia_marketmission:receive_newJob: player_id ~= _src')
        return
    end
    _Tenezia_Market_Mission_Server.deletePlayer()
    print(json.encode(_Tenezia_Market_Mission_Server.allowed_players))
    TriggerEvent('Tenzia_marketmission:newPlayer', player_id)
end)