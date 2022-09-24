--[[
  This file is part of Walker974 & Tenezia RolePlay.
  Copyright (c) Walker974 & Tenezia RolePlay - All Rights Reserved
  Unauthorized using, copying, modifying and/or distributing of this file,
  via any medium is strictly prohibited. This code is confidential.
--]]
---@author Walker974

fx_version 'adamant'
game 'gta5'
lua54 'yes'
use_fxv2_oal 'yes'

author 'Walker974'
description 'Walker974 & Tenezia RolePlay'
version '1.0.0'

shared_script 'shared/shared.lua'

server_scripts {
    'server/*.lua',
    'server/**/*.lua'
}

client_scripts {
    'client/*.lua'
}