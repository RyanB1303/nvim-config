return require("packer").startup(function()
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim" })
	use({ "rcarriga/nvim-notify" })
	use({ "nvim-treesitter/nvim-treesitter" })
	use("rmehri01/onenord.nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
	use({ "romgrk/barbar.nvim" })
	use({ "shaunsingh/nord.nvim" })
	use({ "projekt0n/github-nvim-theme" })
	-- use {'xiyaowong/nvim-transparent'}
	-- use {'neoclide/coc.nvim', branch = 'release'}
	-- use {'tpope/vim-endwise'}
	use({ "tpope/vim-fugitive" })
	use({ "tpope/vim-commentary" })
	-- use {'tpope/vim-surround'}
	-- use {'KurtPreston/vim-autoformat-rails'}
	use {'idanarye/vim-merginal'}
	-- use {'mattn/emmet-vim'}
	-- use {'arkav/lualine-lsp-progress'}
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({ "andymass/vim-matchup" })
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "ThePrimeagen/refactoring.nvim" })
	use({ "glepnir/lspsaga.nvim" })
	use({ "onsails/lspkind.nvim" })
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
	})
	use({ "windwp/nvim-autopairs" })
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})
end)
