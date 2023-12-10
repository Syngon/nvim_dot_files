local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  print('err')
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
  -- Tokyo Night -> Theme
  {'folke/tokyonight.nvim'},

  -- Copilot
  {'github/copilot.vim'},
  
  -- Harpoon window manager and plenary is a dependency
  {'theprimeagen/harpoon'},
  {'nvim-lua/plenary.nvim'},
  
  -- Mason for LSP and its dependencies
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},

  -- LSP Format
  {'lukas-reineke/lsp-format.nvim'},

  -- Everforest Theme
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  
  -- Toggleterm - Terminal
  {'akinsho/toggleterm.nvim', version = '*', config = true},
  
  -- Treesitter - Syntax Highlighting
  {'nvim-treesitter/nvim-treesitter'},
  
  -- LSP Signature
  {
    'ray-x/lsp_signature.nvim',
    event = 'VeryLazy',
    opts = {},
    config = function(_, opts) require 'lsp_signature'.setup(opts) end
  },

  -- Telescope - Fuzzy Finder
  {'nvim-lua/popup.nvim'},
  {'nvim-tree/nvim-web-devicons'},
  {'nvim-telescope/telescope.nvim', tag = '0.1.5'},
  
  -- UndoTree
  {'mbbill/undotree'},
  
  -- FileTree Explorer
  {'nvim-tree/nvim-tree.lua'},
  
  -- Lualine - Status Line
  {'nvim-lualine/lualine.nvim'},
  
  -- Yanky - Clipboard
  {'gbprod/yanky.nvim'},

  -- Indent Blankline
  {'lukas-reineke/indent-blankline.nvim'},

  -- Cmp - Auto Complete
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {'saadparwaiz1/cmp_luasnip'},
})

require('base')
require('color')
require('maps')
require('p-toggleterm')
require('p-mason')
require('p-cmp')
require('p-treesitter')
require('p-harpoon')
require('p-telescope')
require('p-tree')
require('p-undotree')
require('p-lualine')
require('p-yanky')
require('p-indent-blankline')
