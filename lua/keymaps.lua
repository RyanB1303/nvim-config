local wk = require("which-key")
local map = vim.api.nvim_set_keymap
-- local opts = { noremap = true, silent = true }
local telescoper = require'telescope.builtin'
vim.g.mapleader = ','

local opts = {
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

map('n', '<c-b>b', ':NvimTreeToggle<CR>', opts)
-- map('n', '<leader>,', ':w<CR>', opts)
-- movement set
-- map('n', '<leader>[', '<c-w>h', opts)
-- map('n', '<leader>]', '<c-w>l', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
-- close and pin tab
-- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
-- map('n', '<A-S-w>', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)
-- map('n', '<leader>b', ':buffer<CR>', opts) -- opening last buffer

--telescope
-- map('n', '<leader>b', ':Telescope buffers<CR>', opts)
map('n', '<c-p>', ':Telescope find_files<CR>', opts)
-- map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
-- map('n', '<leader>o', ':Telescope coc document_symbols<CR>', opts)
-- map('n', '<leader>of', ':Telescope coc definitions<CR>', opts)
--coc nvim
vim.cmd('source  ~/.config/nvim/keys.vim')

--symbols-outline
map('n', '<leader>l', ':SymbolsOutline<CR>', opts)

wk.register({
  ["<leader>b"] = { "<cmd>Telescope buffers<cr>", "Buffer List"},
  ["<leader>p"] = { "<cmd>Format<cr>", "Format Code"},
  ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Live grep all file"},
  ["<leader>g"] = { "<cmd>0G<cr>", "Fugitive New buffer"},
  ["<leader>l"] = { "<cmd>SymbolsOutline<cr>", "Toggle SymbolsOutline"},
  ["<leader>o"] = { "<cmd>Telescope coc document_symbols<cr>", "Symbol list"},
  ["<leader>of"] = { "<cmd>Telescope coc definitions<cr>", "Definition List"},
  ["<leader>,"] = { "<cmd>w<cr>", "Save file"},
  ["<a-1>"] = { "<cmd>BufferPrevious<cr>", "buffer previous alt"},
  ["<a-3>"] = { "<cmd>BufferNext<cr>", "buffer next alt"},
  ["<a-b>"] = { "<cmd>BufferPick<cr>", "buffer pick mode"},
  ["<a-p>"] = { "<cmd>BufferPin<cr>", "buffer pin"},
  ["<a-s-w>"] = { "<cmd>BufferCloseAllButCurrentOrPinned<cr>", "buffer close all"},
  ["<s-t>"] = {"<cmd>TestLast<cr>", "run last test"},
  ["<c-w>a"] = {"<cmd>wincmd h<cr>", "alt switch right pane"},
  ["<c-w>d"] = {"<cmd>wincmd l<cr>", "alt switch left pane"},
  ["<c-b>g"] = { "<cmd>MerginalToggle<cr>", "Toggle merginal"},
}, opts)
