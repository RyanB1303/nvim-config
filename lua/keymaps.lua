local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ','

map('n', '<c-b>b', ':NvimTreeToggle<CR>', opts)
map('n', '<leader>,', ':w<CR>', opts)
-- movement set
map('n', '<leader>[', '<c-w>h', opts)
map('n', '<leader>]', '<c-w>l', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
-- close and pin tab
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
map('n', '<A-S-w>', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)

--telescope
map('n', '<leader>b', ':Telescope buffers<CR>', opts)
map('n', '<c-p>', ':Telescope find_files<CR>', opts)
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
-- map('n', '<leader>o', ':Telescope coc document_symbols<CR>', opts)
-- map('n', '<leader>of', ':Telescope coc definitions<CR>', opts)
--coc nvim
-- vim.cmd('source  ~/.config/nvim/keys.vim')
