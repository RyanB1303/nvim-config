local opts = {
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
}
local opts_config = {
  ensure_installed = { 'solargraph', 'sumneko_lua' },
  automatic_installation = false
}

require('mason').setup(opts)
require('mason-lspconfig').setup(opts_config)
require('lsp-config')
require('null-ls-config')
