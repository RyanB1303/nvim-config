local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    'sumneko_lua',
    'elixirls',
    'ruby_ls',
    'tsserver',
    'eslint',
    'rust_analyzer'
})

lsp.nvim_workspace()

lsp.setup()
