local set = vim.opt

-- start_setting
set.syntax = "on"
set.expandtab = true
set.shiftwidth = 2
set.softtabstop = 2
set.smarttab = true
set.tabstop = 2

set.wrap = false
set.scrolloff = 5
set.fileencoding = "utf-8"
set.termguicolors = true

set.number = true
set.relativenumber = false
set.cursorline = true
set.guifont = { "DroidSansMono NF", ":h12" }
set.foldenable = false
set.foldmethod = "expr"
set.foldexpr = "nvim_treesitter#foldexpr()"
-- end_setting
-- lsp_server
--
require("plugins")
require("mason-config")
require("tree-config")
require("keymaps")
require("barbar-config")
require("tree-sitter")
require("lualine-config")
--plugins
-- vim.notify = require('notify')
-- vim.g['loaded_perl_provider'] = 0
--themes
--vim.cmd[[colorscheme nord]]
--require('onenord').setup()
require("github-theme").setup()
-- require('transparent-config')
require("telescope-config")
require("neovide-config")
require("vim-notify")
-- require('symbols-outline-config')
-- require('twilight-config')
require("refactoring-config")
require("lspsaga-config")
require("nvim-cmp-config")
require("nvim-autopairs-config")
-- require("trouble-config")
