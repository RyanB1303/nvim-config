local notify = require("notify")

notify.setup({
  background_colour = "#000000",
  timeout = 1500
})

vim.api.nvim_set_keymap("n", "wq",  "", { callback = require("notify").dismiss })

vim.notify = notify
