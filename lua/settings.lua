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

set.relativenumber = true
set.cursorline = true

-- end_setting
require('plugins')
require('tree-config')
require('keymaps')
require('barbar-config')

--plugins
vim.notify = require('notify')

--themes
--vim.cmd[[colorscheme nord]]
require('onenord').setup()
