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
-- vim.cmd('source  ~/.config/nvim/keys.vim')
-- require('coc-keys')

--symbols-outline
map('n', '<leader>l', ':SymbolsOutline<CR>', opts)

-- lsp
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
local on_attach = function(client, bufnr)
-- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- whichkeys
wk.register({
  ["<leader>b"] = { "<cmd>Telescope buffers<cr>", "Buffer List"},
  ["<leader>p"] = { "<cmd>Format<cr>", "Format Code"},
  ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Live grep all file"},
  ["<leader>g"] = { "<cmd>0G<cr>", "Fugitive New buffer"},
  ["<leader>l"] = { "<cmd>SymbolsOutline<cr>", "Toggle SymbolsOutline"},
  ["<leader>,"] = { "<cmd>w<cr>", "Save file"},
  ["<a-<>"] = { "<cmd>BufferMovePrevious<cr>", "buffer move previous alt"},
  ["<a->>"] = { "<cmd>BufferMoveNext<cr>", "buffer move next alt"},
  ["<s-t>"] = { "<cmd>BufferPrevious<cr>", "buffer previous alt"},
  ["t"] = { "<cmd>BufferNext<cr>", "buffer next alt"},
  ["<a-b>"] = { "<cmd>BufferPick<cr>", "buffer pick mode"},
  ["<a-s-w>"] = { "<cmd>BufferCloseAllButCurrentOrPinned<cr>", "buffer close all"},
  ["<c-w>a"] = {"<cmd>wincmd h<cr>", "alt switch right pane"},
  ["<c-w>d"] = {"<cmd>wincmd l<cr>", "alt switch left pane"},
  ["<c-b>g"] = {"<cmd>MerginalToggle<cr>", "Toggle merginal"},
}, opts)
