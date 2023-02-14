local set = vim.opt

-- settings
set.syntax = 'on'
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.smarttab = true
set.tabstop = 2
set.timeoutlen = 100

set.wrap = false
set.scrolloff = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.number = true
set.relativenumber = false
set.cursorline = true
set.guifont = { "MesloLGS NF", ":h12" }
-- set.guifont = { "Meslo LG S Regular Nerd Font", ":h12" }

vim.g['loaded_perl_provider'] = 0
-- python thing
vim.g.python3_host_prog = '/Users/ry/opt/anaconda3/bin/python3'
--neovide

if vim.g.neovide then
  require('neovide-config')
end
--plugins
require('barbar-config')
require('codicon-config')
require('harpoon-config')
require('keymaps')
require('lsp-config')
require('lualine-config')
require('neotest-config')
-- require('null-ls-config')
require('plugins')
require('telescope-config')
require('tree-config')
require('tree-sitter-config')
require('vim-notify')
require('lsp-toggle').setup({
  telescope = true
})
--themes
-- set.background = 'dark'
-- vim.g.gruvbox_material_better_performance = 1
vim.cmd [[colorscheme nightfox]]
