--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

--- Delete Blip
RegisterNetEvent('Tenezia_Market_Mission:Blip:Delete')
---@param mission_id number
AddEventHandler('Tenezia_Market_Mission:Blip:Delete', function(mission_id)
    print('test')
    if (not (mission_id)) then
        print('Error: mission_id is nil')
        return
    end
    if (not (_Tenezia_Market_Mission_Client.Blips.Stock[mission_id])) then
        print('Error: mission_id is not in the table')
        return
    end
    RemoveBlip(_Tenezia_Market_Mission_Client.Blips.Stock[mission_id])
    _Tenezia_Market_Mission_Client.Blips.Stock[mission_id] = nil
end)