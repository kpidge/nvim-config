-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { "catppuccin/nvim", as = "catppuccin" }

  use {
      'nvim-treesitter/nvim-treesitter',
      tag = "v0.9.1",
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }

  use 'nvim-treesitter/nvim-treesitter-context'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  requires = { {'nvim-lua/plenary.nvim'} }

  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = ':MasonUpdate'
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-nvim-lua'},
      {'saadparwaiz1/cmp_luasnip'},

      -- Autocompletion
      {"L3MON4D3/LuaSnip"},
      {'rafamadriz/friendly-snippets'},
    }
  }

  use 'jose-elias-alvarez/null-ls.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
  	  'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
  	  require("nvim-tree").setup {}
    end
  }

  use 'ThePrimeagen/harpoon'

end)
