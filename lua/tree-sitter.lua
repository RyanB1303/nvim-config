require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'lua',
    'ruby',
    'javascript',
    'scss',
    'html',
  },
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  indent = {
    enable = true,
    disable = { "yaml" }
  },
  matchup = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
    colors = {
      '#FA2FB5'
    }
  }
}
