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
    print('Tenezia Market Mission Server is started!')
    ---@param data table
    _Tenezia_Market_Mission_Server.getDate(function(data)
        if (((data.day == 'Monday') or (data.day == 'Friday')) and (data.hour == _Tenezia_Market_Mission_Server.Mission.Orgas.hour)) then
            Wait(5000)
            _Tenezia_Market_Mission_Server.StartOrgaMission()
            execute_loop = false
            return
        elseif ((data.day == 'Tuesday') or (data.day == 'Thursday') and (data.hour == _Tenezia_Market_Mission_Server.Mission.Gangs.hour)) then
            Wait(5000)
            _Tenezia_Market_Mission_Server.StartGangMission()
            execute_loop = false
            return
        elseif ((data.day == 'Wednesday') or (data.day == 'Saturday') or (data.day == 'Sunday')) then
            print('No mission today !')
            execute_loop = false
            return
        else
            while (execute_loop) do
                Wait(3600*1000)
                _Tenezia_Market_Mission_Server.InitFunc()
            end
        end
    end)
end
