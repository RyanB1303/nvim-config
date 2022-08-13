require('telescope').setup({
  extensions = {
    coc = {
      prefer_locations = true
    }
  }
})
require('telescope').load_extension('coc')
