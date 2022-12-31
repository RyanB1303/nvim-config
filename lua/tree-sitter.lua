require'nvim-treesitter.configs'.setup {
  ensure_installed = { "help", "javascript", "typescript", "c", "ruby", "elixir", "lua", "rust" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true
  },
  indent = {
    enable = false,
    disable = { "yaml" }
  }
}
