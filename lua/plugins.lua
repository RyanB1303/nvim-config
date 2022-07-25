return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'rcarriga/nvim-notify'
  -- Post-install/update hook with neovim command
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'rmehri01/onenord.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'romgrk/barbar.nvim'}
  use {'shaunsingh/nord.nvim'}
end)