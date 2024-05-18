-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			{'nvim-lua/plenary.nvim'}
		}
	}

	use {
		'goolord/alpha-nvim',
	}

	-- status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			{'nvim-tree/nvim-web-devicons'}
		}
	}

	-- color schemes
	use { 'EdenEast/nightfox.nvim' }
	use { 'FrenzyExists/aquarium-vim' }
	use { 'Mofiqul/dracula.nvim' }
	use { 'NTBBloodbath/doom-one.nvim' }
	use { 'Shatur/neovim-ayu' }
	use { 'catppuccin/nvim', as = 'catppuccin' }
	use { 'dasupradyumna/midnight.nvim' }
	use { 'ellisonleao/gruvbox.nvim' }
	use { 'folke/tokyonight.nvim' }
	use { 'huyvohcmc/atlas.vim' }
	use { 'kvrohit/mellow.nvim' }
	use { 'kvrohit/substrata.nvim' }
	use { 'lourenci/github-colors' }
	use { 'marko-cerovac/material.nvim' }
	use { 'nvimdev/zephyr-nvim' }
	use { 'nyoom-engineering/oxocarbon.nvim' }
	use { 'olivercederborg/poimandres.nvim' }
	use { 'oxfist/night-owl.nvim' }
	use { 'ramojus/mellifluous.nvim' }
	use { 'rebelot/kanagawa.nvim' }
	use { 'rockerBOO/boo-colorscheme-nvim' }
	use { 'rose-pine/neovim', as = 'rose-pine' }
	use { 'sainnhe/edge' }
	use { 'sainnhe/sonokai' }
	use { 'savq/melange-nvim' }
	use { 'tanvirtin/monokai.nvim' }
	use { 'theniceboy/nvim-deus' }

	use ( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } )
	use { 'nvim-treesitter/playground' }

	-- utilities
	use { 'ggandor/leap.nvim' }
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
	use { 'jakewvincent/mkdnflow.nvim' }
	use (
		'iamcco/markdown-preview.nvim', { 
			run = function() vim.fn['mkdp#util#install']() end, 
		}
	)

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
