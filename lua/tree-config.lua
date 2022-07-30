require("nvim-tree").setup({
  diagnostics = {
    enable = true,
    icons = {
      error = "x",
      warning = "!",
    }
  },
  sync_root_with_cwd = true,
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
    dotfiles = false,
  },
})
