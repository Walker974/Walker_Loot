--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@param cb function
_Tenezia_Market_Mission_Server.getDate = function(cb)
    local date = os.date('*t')
    local day = os.date('%A')
    local hour = date.hour + 2
    local data = {
        day = day,
        hour = hour
    }
    cb(data)
end