require('telescope').setup({
        defaults = { file_ignore_patterns = { "node_modules", ".elixir_ls", "_build", "deps", "vendor" } },
        extensions = {
                lsp_handlers = {
                        code_action = {
                                telescope = require('telescope.themes').get_dropdown()
                        }
                },
                dash = {

                        -- configure path to Dash.app if installed somewhere other than /Applications/Dash.app
                        dash_app_path = '/Applications/Setapp/Dash.app',
                        -- search engine to fall back to when Dash has no results, must be one of: 'ddg', 'duckduckgo', 'startpage', 'google'
                        search_engine = 'google',
                        -- debounce while typing, in milliseconds
                        debounce = 0,
                        -- map filetype strings to the keywords you've configured for docsets in Dash
                        -- setting to false will disable filtering by filetype for that filetype
                        -- filetypes not included in this table will not filter the query by filetype
                        -- check src/lua_bindings/dash_config_binding.rs to see all defaults
                        -- the values you pass for file_type_keywords are merged with the defaults
                        -- to disable filtering for all filetypes,
                        -- set file_type_keywords = false
                        file_type_keywords = {
                                dashboard = false,
                                NvimTree = false,
                                TelescopePrompt = false,
                                terminal = false,
                                packer = false,
                                fzf = false,
                                -- a table of strings will search on multiple keywords
                                javascript = { 'javascript', 'nodejs' },
                                typescript = { 'typescript', 'javascript', 'nodejs' },
                                typescriptreact = { 'typescript', 'javascript', 'react' },
                                javascriptreact = { 'javascript', 'react' },
                                -- you can also do a string, for example,
                                -- sh = 'bash'
                        },

                }
        }
})
require("telescope").load_extension('harpoon')
