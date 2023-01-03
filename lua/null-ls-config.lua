local null_ls = require("null-ls")
local standardrb_config = {
  prefer_local = "bundle exec standardrb"
}

null_ls.setup({
  sources = {
    -- snippets
    null_ls.builtins.completion.luasnip,
    -- null_ls.builtins.formatting.stylua,
    -- js 
    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.diagnostics.eslint_d,
    -- elm
    null_ls.builtins.formatting.elm_format,
    -- erb
    null_ls.builtins.formatting.erb_lint,
    null_ls.builtins.diagnostics.erb_lint,
    -- haml
    null_ls.builtins.diagnostics.haml_lint,
    -- ruby
    null_ls.builtins.diagnostics.standardrb.with(standardrb_config),
    null_ls.builtins.formatting.standardrb.with(standardrb_config),
    -- yaml
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.formatting.yamlfmt,
  }
})
