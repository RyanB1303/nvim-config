require('telescope').setup({
  defaults = { file_ignore_patterns = { "node_modules", ".elixir_ls", "_build", "deps", "vendor" } },
  extensions = {
    coc = {
      prefer_locations = true
    }
  }
})
-- require('telescope').load_extension('coc')
