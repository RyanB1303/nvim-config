local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {}
}

local opts = {noremap = true, silent = true}
local key = vim.keymap.set
-- keymaps
--lsp_finder
key('n', '<c-j>', '<cmd>Lspsaga lsp_finder<cr>', opts)
--jump to error
key('n', '[e', function()
  require('lspsaga.diagnostic').goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
key('n', ']e', function()
  require('lspsaga.diagnostic').goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)
--toggle outline
key('n', '<leader>l', '<cmd>LSoutlineToggle<cr>', opts)
