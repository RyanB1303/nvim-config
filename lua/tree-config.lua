require("nvim-tree").setup({
  diagnostics = {
    enable = true,
    icons = {
      error = "x",
      warning = "!",
    }
  },
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
