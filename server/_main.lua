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
            {x = 116.5, y = -594.9, z = 42.85},
            {x = -15.27, y = 37.63, z = 70.40},
            {x = 575.8, y = -1425.4, z = 19.0}
        },
        Gangs = {
             {x = 116.5, y = -594.9, z = 42.85},
             {x = -15.27, y = 37.63, z = 70.40},
             {x = 575.8, y = -1425.4, z = 19.0}
        },
    },
    Mission = {
        Prop_name = 'prop_boxpile_07d',
        Orgas = {
            hour = 22,
            Allowed = {'mafia', 'cartel'},
            Rewards = {
                [1] = {'advancedrifle', 'appistol'},
                [2] = {'ball', 'bird_crap_ammo'},
                [3] = {'compactrifle', 'dbshotgun'}
            }
        },
        Gangs = {
            hour = 22,
            Allowed = {'ballas', 'vagos'},
            Rewards = {
                [1] = {'advancedrifle', 'appistol'},
                [2] = {'ball', 'bird_crap_ammo'},
                [3] = {'compactrifle', 'dbshotgun'}
            }
        },
        FO = {'police', 'fbi'},
        default_radius = 100.0,
        Wait_interval = 5000
    }
}