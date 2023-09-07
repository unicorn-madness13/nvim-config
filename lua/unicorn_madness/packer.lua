-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = {
			{'nvim-lua/plenary.nvim'}
		}
	}

	-- dashboard
	use { 
		'startup-nvim/startup.nvim',
		requires = {
			{'nvim-telescope/telescope.nvim'},
			{'nvim-lua/plenary.nvim'}
		}
	}

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			{'nvim-tree/nvim-web-devicons'}
		}
	}

	-- color schemes
	use { 'rose-pine/neovim', as = 'rose-pine' }
	use { 'catppuccin/nvim', as = 'catppuccin' }
	use { 'nyoom-engineering/oxocarbon.nvim' }
	use { 'Shatur/neovim-ayu' }
	use { 'folke/tokyonight.nvim' }
	use { 'ellisonleao/gruvbox.nvim' }
	use { 'marko-cerovac/material.nvim' }
	use { 'sainnhe/edge' }
	use { 'huyvohcmc/atlas.vim' }
	use { 'rockerBOO/boo-colorscheme-nvim' }
	use { 'lourenci/github-colors' }
	use { 'rebelot/kanagawa.nvim' }
	use { 'NTBBloodbath/doom-one.nvim' }
	use { 'tanvirtin/monokai.nvim' }
	use { 'sainnhe/sonokai' }
	use { 'theniceboy/nvim-deus' }
	use { 'FrenzyExists/aquarium-vim' }
	use { 'olivercederborg/poimandres.nvim' }

	use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
	use { 'nvim-treesitter/playground' }

	-- file stuff
	use { 'theprimeagen/harpoon' }
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			{'nvim-tree/nvim-web-devicons'},
		},
	}
	use {
		'j-morano/buffer_manager.nvim',
		requires = {
			{'nvim-lua/plenary.nvim'},
		},
	}
	use { 'natecraddock/workspaces.nvim' }

	use { 'mbbill/undotree' }

	-- git
	use { 'tpope/vim-fugitive' }

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

	use { 'Shatur/neovim-cmake' }

	use { 
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end
	}
end)
