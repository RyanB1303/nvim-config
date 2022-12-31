local set = vim.opt

-- start_setting
set.syntax = on
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 4
set.smarttab = true
set.tabstop = 4

set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.number = true
set.relativenumber = false
set.cursorline = true
set.guifont={ "MesloLGS NF", ":h12" }
-- end_setting
require('plugins')
require('tree-config')
require('keymaps')
require('barbar-config')
require('tree-sitter')
require('lualine-config')
--plugins
vim.notify = require('notify')
vim.g['loaded_perl_provider'] = 0
vim.g['test#strategy'] = 'tslime'
vim.g.ale_fixers = { elixir = 'mix_format'}
--themes
set.background= 'dark'
vim.g.gruvbox_material_better_performance = 1
vim.cmd[[colorscheme gruvbox-material]]
--require('onenord').setup()
-- require('github-theme').setup()
require('transparent-config')
require('telescope-config')
require('neovide-config')
require('vim-notify')
require('elixir-config')
-- require('nvim-test-config')
