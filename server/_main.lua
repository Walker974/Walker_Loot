--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

_Tenezia_Market_Mission_Server = {
    allowed_players = {
        Orgas = {},
        Gangs = {},
        FO = {}
    },
    zones = {
        Orgas = {
            {x = 0.0, y = 0.0, z = 0.0, radius = 0.0},
            {x = 125.0, y = 10.0, z = 12.0, radius = 0.0},
            {x = 18.0, y = 10.0, z = 12.0, radius = 0.0}
        },
        Gangs = {
            {x = 0.0, y = 0.0, z = 0.0, radius = 0.0},
            {x = 125.0, y = 10.0, z = 12.0, radius = 0.0},
            {x = 18.0, y = 10.0, z = 12.0, radius = 0.0}
        },
    },
    Mission = {
        Orgas = {
            Allowed = {'mafia', 'cartel'},
            Rewards = {
                [1] = {'bread', 'water'},
                [2] = {'burger', 'bandage'},
                [3] = {'coke', 'weed'}
            }
        },
        Gangs = {
            Allowed = {'ballas', 'vagos'},
            Rewards = {
                [1] = {'bread', 'water'},
                [2] = {'burger', 'bandage'},
                [3] = {'coke', 'weed'}
            }
        },
        FO = {'police', 'fbi'}
    }
}