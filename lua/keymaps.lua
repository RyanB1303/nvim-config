local wk = require("which-key")
local opts = {
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}
vim.g.mapleader = ','
-- lsp go in lsp-config
wk.register({
  ["<C-p>"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>b"] = { "<cmd>Telescope buffers<cr>", "Buffer List" },
  ["<leader>f"] = { "<cmd>LspZeroFormat<cr>", "Format Code" },
  ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Live grep all file" },
  ["<leader>g"] = { "<cmd>0G<cr>", "Fugitive New buffer" },
  ["<leader>l"] = { "<cmd>SymbolsOutline<cr>", "Toggle SymbolsOutline" },
  ["<leader>,"] = { "<cmd>w<cr>", "Save file" },
  ["<a-w>"] = { "<cmd>BufferClose<cr>", "buffer close" },
  ["<a-.>"] = { "<cmd>BufferNext<cr>", "buffer next" },
  ["<a-,>"] = { "<cmd>BufferPrevious<cr>", "buffer previous" },
  ["<a-<>"] = { "<cmd>BufferMovePrevious<cr>", "buffer move previous alt" },
  ["<a->>"] = { "<cmd>BufferMoveNext<cr>", "buffer move next alt" },
  ["<s-t>"] = { "<cmd>BufferPrevious<cr>", "buffer previous alt" },
  ["t"] = { "<cmd>BufferNext<cr>", "buffer next alt" },
  ["<a-b>"] = { "<cmd>BufferPick<cr>", "buffer pick mode" },
  ["<a-s-w>"] = { "<cmd>BufferCloseAllButCurrentOrPinned<cr>", "buffer close all" },
  ["<c-w>a"] = { "<cmd>wincmd h<cr>", "alt switch right pane" },
  ["<c-w>d"] = { "<cmd>wincmd l<cr>", "alt switch left pane" },
  ["<c-b>b"] = { "<cmd>NvimTreeToggle<cr>", "Toggle navigation" },
  ["<c-b>g"] = { "<cmd>MerginalToggle<cr>", "Toggle merginal" },
}, opts)
