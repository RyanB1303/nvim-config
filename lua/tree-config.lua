require("nvim-tree").setup({
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  auto_reload_on_write = true,
  diagnostics = {
    enable = true,
    icons = {
      error = "x",
      warning = "!",
    }
  },
  sync_root_with_cwd = true,
  view = {
    adaptive_size = false,
    centralize_selection = true,
    side = "right",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    full_name = false,
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        none = " ",
      },
    }
  },
  filters = {
    dotfiles = false,
    custom = { "^.git$" }
  },
})
