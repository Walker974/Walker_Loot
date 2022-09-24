--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@param resourceName string
AddEventHandler('onResourceStart', function(resourceName)
    if ((GetCurrentResourceName()) ~= (resourceName)) then
        return
    end
    _Tenezia_Market_Mission_Server.InitFunc()
end)