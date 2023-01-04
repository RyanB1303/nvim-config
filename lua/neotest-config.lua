local ntest = require("neotest")

ntest.setup({
  adapters = {
    -- Any other adapters
    require("neotest-plenary"),
    require("neotest-elixir")({
      extra_formatters = { "ExUnit.CLIFormatter", "ExUnitNotifier" },
      -- Extra arguments to pass to mix test
      -- Can be a function that receives the position, to return a dynamic value
      -- Default: {}
      args = { "--trace" },
      -- Delays writes so that results are updated at most every given milliseconds
      -- Decreasing this number improves snappiness at the cost of performance
      -- Can be a function to return a dynamic value.
      -- Default: 1000
      write_delay = 1000,
    }),
    require("neotest-rspec")({
      rspec_cmd = function()
        return vim.tbl_flatten({
          "bundle",
          "exec",
          "rspec",
        })
      end
    }),
  }
})
-- nearest test
vim.keymap.set("n", "gtt", function() ntest.run.run() end)
-- file test
vim.keymap.set("n", "gtf", function() ntest.run.run(vim.fn.expand("%")) end)
-- open floating 
vim.keymap.set("n", "gto", function() ntest.output.open({ enter = true, last_run = true}) end)
-- open summary 
vim.keymap.set("n", "gtp", function() ntest.summary.open() end)
-- jump to failed test
vim.keymap.set("n", "[n", function() ntest.jump.prev({ status = "failed"}) end)
vim.keymap.set("n", "]n", function() ntest.jump.next({ status = "failed"}) end)
