local plugins = {
	-- startup greeter
	{
		"goolord/alpha-nvim",
		lazy = false,
  },

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- color schemes
	'EdenEast/nightfox.nvim',
	'FrenzyExists/aquarium-vim',
	'Mofiqul/dracula.nvim',
	'NTBBloodbath/doom-one.nvim',
	'Shatur/neovim-ayu',
	{ 'catppuccin/nvim', name = 'catppuccin' },
	'dasupradyumna/midnight.nvim',
	'ellisonleao/gruvbox.nvim',
	{ 'folke/tokyonight.nvim', lazy = false },
	'huyvohcmc/atlas.vim',
	'kvrohit/mellow.nvim',
	'kvrohit/substrata.nvim',
	'lourenci/github-colors',
	'marko-cerovac/material.nvim',
	'nvimdev/zephyr-nvim',
	'nyoom-engineering/oxocarbon.nvim',
	'olivercederborg/poimandres.nvim',
	'oxfist/night-owl.nvim',
	'ramojus/mellifluous.nvim',
	'rebelot/kanagawa.nvim',
	'rockerBOO/boo-colorscheme-nvim',
	{ 'rose-pine/neovim', name = 'rose-pine' },
	'sainnhe/edge',
	'sainnhe/sonokai',
	'savq/melange-nvim',
	'tanvirtin/monokai.nvim',
	'theniceboy/nvim-deus',

	{
		'nvim-treesitter/nvim-treesitter',
		lazy = true,
	},
	'nvim-treesitter/playground',

	-- utilities
	'ggandor/leap.nvim',
	{
		'nvim-tree/nvim-tree.lua',
		lazy = false,
		dependencies = {
			'nvim-tree/nvim-web-devicons',
		},
	},
	{
		'j-morano/buffer_manager.nvim',
		lazy = false,
		dependencies = {
			'nvim-lua/plenary.nvim',
		},
	},
	{ 'natecraddock/workspaces.nvim', lazy = false },
	'jakewvincent/mkdnflow.nvim',
	'mbbill/undotree',
	{
		'folke/which-key.nvim',
		lazy = false,
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},

	-- git
	'tpope/vim-fugitive',

	-- lsp
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			-- LSP Support
			'neovim/nvim-lspconfig',             -- Required
			'williamboman/mason.nvim',           -- Optional
			'williamboman/mason-lspconfig.nvim', -- Optional

			-- Autocompletion
			'hrsh7th/nvim-cmp',         -- Required
			'hrsh7th/cmp-nvim-lsp',     -- Required
			'hrsh7th/cmp-buffer',       -- Optional
			'hrsh7th/cmp-path',         -- Optional
			'saadparwaiz1/cmp_luasnip', -- Optional
			'hrsh7th/cmp-nvim-lua',     -- Optional

			-- Snippets
			'L3MON4D3/LuaSnip',             -- Required
			'rafamadriz/friendly-snippets', -- Optional
		},
	},
}

local config = {
	git = {
		timeout = 300,
	},
	install = {
		missing = false,
		colorscheme = { 'tokyonight' },
	}
}

require("lazy").setup(plugins, config)
