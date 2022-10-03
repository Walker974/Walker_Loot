--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

---@field public id number
---@field public type string
---@field public items table
---@field public allowedJobs table
---@class _Tenezia_Market_Mission
_Tenezia_Market_Mission = {}
_Tenezia_Market_Mission.__index = _Tenezia_Market_Mission

setmetatable(_Tenezia_Market_Mission, {
    __call = function (_, id, type, items, allowedJobs)
        local self = setmetatable({}, _Tenezia_Market_Mission)
        self.id = id
        self.type = type
        self.items = items
        self.allowedJobs = allowedJobs
        return (self)
    end
})

---@type table
local missions = {}

---@param type string
---@param items table
---@param allowedJobs table
---@return number
---@public
function _Tenezia_Market_Mission:createMission(type, items, allowedJobs)
    if (not (type) or not  (items) or not (allowedJobs)) then
        return
    end
    local id;
    if (json.encode(missions) == nil) then
        ---@type number
         id = 1
    else
        ---@type number
         id = #missions + 1
    end
    local mission = _Tenezia_Market_Mission(id, type, items, allowedJobs)
    table.insert(missions, mission)
    return (id)
end

---@param id number
---@return void
---@public
function _Tenezia_Market_Mission:deleteMission(id)
    if (not (id) or (missions[id] == nil)) then
        print("Mission ID is nil")
        return
    end
    table.remove(missions, id)
end

---@param id number
---@return table
---@public
function _Tenezia_Market_Mission:getMission(id)
    if (not (id)) then
        return
    end
    if (not (missions[id])) then
        print("Mission not found")
        return
    end
    return (missions[id])
end

---@return table
---@public
function _Tenezia_Market_Mission:getAllMissions()
    return (missions)
end


---@return number
---@public
function _Tenezia_Market_Mission:getCurrentMissionId()
    local id = #missions
    return (id)
end