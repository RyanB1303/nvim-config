local elixir = require('elixir')


elixir.setup({
  settings = elixir.settings({
    dialyzerEnabled = true,
    fetchDeps = false,
    enableTestLenses = true,
    suggestSpecs = true
  }),
  on_attach = function(client, bufnr)
    local map_opts = { buffer = true, noremap = true }
    -- keymaps
    -- run codelens
    vim.keymap.set("n", "<space>r", vim.lsp.codelens.run, map_opts)
     -- remove the pipe operator
    vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", map_opts)
    -- add the pipe operator
    vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", map_opts)
    vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", map_opts)
    -- lsp
    vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", map_opts)
    vim.keymap.set("n", "<space>d", "<cmd>lua vim.diagnostic.open_float()<cr>", map_opts)

    -- formatting
    vim.keymap.set("n", "df", "<cmd>lua vim.lsp.buf.format()<cr>", map_opts)
    -- run test
    vim.keymap.set("n", "gtt", "<cmd>lua vim.lsp.codelens.run()<cr>", map_opts)


  end
})
