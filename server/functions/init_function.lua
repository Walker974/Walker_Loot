--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@type boolean
local execute_loop = true

_Tenezia_Market_Mission_Server.InitFunc = function()
    ---@param data table
    _Tenezia_Market_Mission_Server.getDate(function(data)
        if (((data.day) == (('Monday' ) or ('Friday'))) and ((data.hour) == (22))) then
            _Tenezia_Market_Mission_Server.StartOrgaMission()
            execute_loop = false
            return
        elseif (((data.day) == (('Tuesday') or ('Thursday'))) and ((data.hour) == (22))) then
            _Tenezia_Market_Mission_Server.StartGangMission()
            execute_loop = false
            return
        elseif (((data.day) == (('Wednesday') or ('Saturday') or ('Sunday')))) then
            print('No mission today !')
            execute_loop = false
            return
        end
        while (execute_loop) do
            Wait(10000)
            _Tenezia_Market_Mission_Server.InitFunc()
        end
    end)
end