require('telescope').setup({
  defaults = { file_ignore_patterns = { "node_modules", ".elixir_ls", "_build", "deps", "vendor" } },
  extensions = {
    lsp_handlers = {
      code_action = {
        telescope = require('telescope.themes').get_dropdown()
      }
    }
  }
})
require("telescope").load_extension('harpoon')
