local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- snippets
    null_ls.builtins.completion.luasnip,
    -- elm
    null_ls.builtins.formatting.elm_format,
    -- haml
    null_ls.builtins.diagnostics.haml_lint,
    -- yaml
    null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.formatting.yamlfmt,
  }
})
