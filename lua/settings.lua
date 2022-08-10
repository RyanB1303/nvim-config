local set = vim.opt

-- start_setting
set.syntax = on
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.smarttab = true
set.tabstop = 2

set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.number = true
set.relativenumber = false
set.cursorline = true
set.guifont={ "DroidSansMono NF", ":h12" }
-- end_setting
require('plugins')
require('tree-config')
require('keymaps')
require('barbar-config')
require('tree-sitter')
require('lualine-config')
--plugins
vim.notify = require('notify')

--themes
--vim.cmd[[colorscheme nord]]
--require('onenord').setup()
require('github-theme').setup()
require('transparent-config')
