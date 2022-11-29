return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'rcarriga/nvim-notify'
  -- Post-install/update hook with neovim command
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'},
    --plugins
    {'fannheyward/telescope-coc.nvim'}
    }
  }
  use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'romgrk/barbar.nvim'}
  use {'projekt0n/github-nvim-theme'}
  use {'xiyaowong/nvim-transparent'}
  use {'neoclide/coc.nvim', branch = 'release'}
  use {'tpope/vim-endwise'}
  use {'tpope/vim-fugitive'}
  use {'tpope/vim-commentary'}
  use {'tpope/vim-surround'}
  use {'idanarye/vim-merginal'}
  use {'folke/which-key.nvim'}
  use {'sheerun/vim-polyglot'}
  use 'wakatime/vim-wakatime'
  use {'janko/vim-test'}
  use {'jgdavey/tslime.vim'}
  use {'dense-analysis/ale'}
end)
