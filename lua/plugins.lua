return require('packer').startup(function()
        -- Packer can manage itself
        use { 'wbthomason/packer.nvim' }
        use { 'rcarriga/nvim-notify' }
        -- treesitter & plugins
        use {
                'nvim-treesitter/nvim-treesitter',
                run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        }
        use {
                'RRethy/nvim-treesitter-endwise',
                wants = 'nvim-treesitter',
                event = 'InsertEnter'
        }
        use {
                "windwp/nvim-autopairs",
                config = function() require("nvim-autopairs").setup {} end
        }
        -- end treesitter
        use {
                'kyazdani42/nvim-tree.lua',
                requires = { 'kyazdani42/nvim-web-devicons' }
        }
        use {
                'nvim-telescope/telescope.nvim',
                requires = { { 'nvim-lua/plenary.nvim' },
                }
        }
        use {
                'nvim-lualine/lualine.nvim',
                requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use { 'romgrk/barbar.nvim' }
        use { 'tpope/vim-fugitive' }
        use { 'tpope/vim-commentary' }
        use { 'tpope/vim-rails' }
        use { 'idanarye/vim-merginal' }
        use { 'folke/which-key.nvim' }
        use { 'rhysd/conflict-marker.vim' }
        use { 'theprimeagen/harpoon' }
        use {
                'VonHeikemen/lsp-zero.nvim',
                requires = {
                        -- LSP Support
                        { 'neovim/nvim-lspconfig' },
                        { 'williamboman/mason.nvim' },
                        { 'williamboman/mason-lspconfig.nvim' },

                        -- Autocompletion
                        { 'hrsh7th/nvim-cmp' },
                        { 'hrsh7th/cmp-buffer' },
                        { 'hrsh7th/cmp-path' },
                        { 'saadparwaiz1/cmp_luasnip' },
                        { 'hrsh7th/cmp-nvim-lsp' },
                        { 'hrsh7th/cmp-nvim-lua' },

                        -- Snippets
                        { 'L3MON4D3/LuaSnip' },
                        { 'rafamadriz/friendly-snippets' },
                }
        }
        use {
                "nvim-neotest/neotest",
                requires = {
                        'mortepau/codicons.nvim',
                        "nvim-lua/plenary.nvim",
                        "nvim-treesitter/nvim-treesitter",
                        "antoinemadec/FixCursorHold.nvim",
                        "nvim-neotest/neotest-plenary",
                        "jfpedroza/neotest-elixir",
                        "olimorris/neotest-rspec"
                }
        }
        use { 'gbrlsnchs/telescope-lsp-handlers.nvim' }
        use { '~/Projects/clone_for_build/dash.nvim' }
        -- theme
        use { 'sainnhe/gruvbox-material' }
        use { 'EdenEast/nightfox.nvim' }
        use { 'joshdick/onedark.vim' }
        use { 'haishanh/night-owl.vim' }
        use { 'arkav/lualine-lsp-progress' }
        use { 'lukas-reineke/indent-blankline.nvim' }
        use { 'chaoren/vim-wordmotion' }
end)
