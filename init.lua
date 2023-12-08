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
  {'folke/tokyonight.nvim'},
  {'github/copilot.vim'},
  {'nvim-lua/plenary.nvim'},
  {'theprimeagen/harpoon'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins

  },
  {'akinsho/toggleterm.nvim', version = '*', config = true},
  {'nvim-treesitter/nvim-treesitter'},
  {
    'ray-x/lsp_signature.nvim',
    event = 'VeryLazy',
    opts = {},
    config = function(_, opts) require 'lsp_signature'.setup(opts) end
  },
  {'nvim-tree/nvim-web-devicons'},
  {'nvim-telescope/telescope.nvim', tag = '0.1.5'},
  {'mbbill/undotree'},
  {'nvim-tree/nvim-tree.lua'},
  {'nvim-lualine/lualine.nvim'},
  {'gbprod/yanky.nvim'},
  {'lukas-reineke/indent-blankline.nvim'},

})

require('base')
require('color')
require('maps')
require('other')
require('p-mason')
require('p-treesitter')
require('p-harpoon')
require('p-telescope')
require('p-tree')
require('p-undotree')
require('p-lualine')
require('p-yanky')
require('p-indent-blankline')
