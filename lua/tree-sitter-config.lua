local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')

npairs.setup({
  check_ts = true,
  ts_config = {
    lua = { 'string' },
    javascript = { 'template_string' },
    java = false
  }
})

local ts_conds = require('nvim-autopairs.ts-conds')
-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
      :with_pair(ts_conds.is_ts_node({ 'string', 'comment' })),
  Rule("$", "$", "lua")
      :with_pair(ts_conds.is_not_ts_node({ 'function' }))
})

require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "help", "javascript", "typescript", "c", "ruby", "elixir", "lua", "rust" },
  sync_install = false,
  auto_install = false,
  endwise = {
    enable = true
  },
  highlight = {
    enable = true
  },
  indent = {
    enable = true,
    -- disable = { "yaml" }
  }
}