local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ','

map('n', '<c-b>b', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>,', ':w<CR>', opts)
map('n', '<c-p>', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
-- movement set
map('n', '<leader>[', '<c-w>h', opts)
map('n', '<leader>]', '<c-w>l', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
-- close and pin tab
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
map('n', '<A-S-w>', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)
map('n', '<leader>b', ':buffer<CR>', opts) -- opening last buffer
