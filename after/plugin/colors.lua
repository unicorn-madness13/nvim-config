function ColorMyPencils(color)
	color = color or "mellow"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"  })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

function NoItalics()
	vim.api.nvim_set_hl(0, 'Function', { italic = false })
	vim.api.nvim_set_hl(0, 'Type', { italic = false })
	vim.api.nvim_set_hl(0, 'Keyword', { italic = false })
	vim.api.nvim_set_hl(0, 'Constant', { italic = false })
end

require('dracula').setup()

require('gruvbox').setup({
	contrast = "hard",
})

require('monokai').setup({
	italics = false,
	custom_hlgroups = {
		LineNr = {
			fg = 'none',
			bg = 'none'
		}
	}
})

require('rose-pine').setup({
	disable_italics = true,
})

require('tokyonight').setup({
	transparent = true,
	styles = {
		keywords = { italic = false },
		sidebars = 'transparent'
	},
})

require('catppuccin').setup({
	styles = {
		comments = { 'italic' },
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		harpoon = true,
		mason = true,
		nvimtree = true,
		telescope = true
	},
	color_overrides = {
		-- blend of rose-pine and aquarium: https://github.com/FrenzyExists/aquarium-vim/tree/develop
		macchiato = {
			rosewater = "#ebb9b9",
			flamingo = "#f2cdcd",
			mauve = "#ddb6f2",
			pink = "#f6bbe7",
			peach = "#f5c9a5", -- changes the command lualine color
			yellow = "#e6dfb8",
			red = "#d77070",
			maroon = "#e8a2af",
			green = "#b1dba4",
			blue = "#b8deeb",
			sky = "#b9eaf3",
			teal = "#b5e8e0",
			lavender = "#cddbf9",

			steel = "#63718b",
			deepsteel = "#3d4059",
			deepsteel1 = "#535779",

			text = "#a7b7d6",
			subtext0 = "#63718b",
			subtext1 = "#3d4059",

			base = "#20202a",
			mantle = "#1a1a24",
			crust = "#313449",
		},
		-- taken from https://github.com/ayamir/nvimdots/blob/main/lua/modules/configs/ui/catppuccin.lua
		mocha = {
			rosewater = "#F5E0DC",
			flamingo = "#F2CDCD",
			mauve = "#DDB6F2",
			pink = "#F5C2E7",
			red = "#F28FAD",
			maroon = "#E8A2AF",
			peach = "#F8BD96",
			yellow = "#FAE3B0",
			green = "#ABE9B3",
			blue = "#96CDFB",
			sky = "#89DCEB",
			teal = "#B5E8E0",
			lavender = "#C9CBFF",

			text = "#D9E0EE",
			subtext1 = "#BAC2DE",
			subtext0 = "#A6ADC8",
			overlay2 = "#C3BAC6",
			overlay1 = "#988BA2",
			overlay0 = "#6E6C7E",
			surface2 = "#6E6C7E",
			surface1 = "#575268",
			surface0 = "#302D41",

			base = "#1E1E2E",
			mantle = "#1A1826",
			crust = "#161320",
		}
	},
	highlight_overrides = {
		macchiato = function(cp)
			return {
				MatchParen = { fg = cp.blue },
				Macro = { fg = cp.blue },

				["@keyword"] = { fg = cp.rosewater },
				["@keyword.function"] = { fg = cp.rosewater },
				["@keyword.return"] = { fg = cp.rosewater },
				["@keyword.operator"] = { fg = cp.rosewater },

				["@include"] = { fg = cp.rosewater },
				["@namespace"] = { fg = cp.yellow },

				["@variable"] = { fg = cp.steel },
				["@variable.builtin"] = { fg = cp.steel },
				["@parameter"] = { fg = cp.steel },
				["@constant"] = { fg = cp.steel },

				["@function.builtin"] = { fg = cp.blue },
				["@function.call"] = { fg = cp.blue },
				["@function.macro"] = { fg = cp.blue },
				["@method.call"] = { fg = cp.blue },

				["@repeat"] = { fg = cp.blue },
				["@conditional"] = { fg = cp.blue },

				["@punctuation.bracket"] = { fg = cp.steel },
				["@punctuation.delimiter"] = { fg = cp.steel },

				["@type"] = { fg = cp.blue },
				["@type.qualifier"] = { fg = cp.yellow },

				["@comment"] = { fg = cp.deepsteel1, style = { "italic" } },
			}
		end,
		mocha = function(cp)
			return {
				TabLineSel = { bg = cp.pink },
				CmpBorder = { fg = cp.surface2 },
				Pmenu = { bg = cp.none },
				TelescopeBorder = { link = "FloatBorder" },

				-- For treesitter.
				["@field"] = { fg = cp.rosewater },
				["@property"] = { fg = cp.yellow },

				["@variable"] = { fg = cp.text },
				["@include"] = { fg = cp.teal },
				["@keyword"] = { fg = cp.red },
				["@keyword.function"] = { fg = cp.maroon },
				["@keyword.return"] = { fg = cp.pink, style = {} },
				["@keyword.operator"] = { fg = cp.sky },
				["@punctuation.special"] = { fg = cp.maroon },

		
				["@constructor"] = { fg = cp.lavender },
				["@exception"] = { fg = cp.peach },

				["@constant.builtin"] = { fg = cp.lavender },
				["@type.qualifier"] = { link = "@keyword" },
				["@variable.builtin"] = { fg = cp.red, style = { "italic" } },

				["@function.macro"] = { fg = cp.red, style = {} },
				["@parameter"] = { fg = cp.rosewater },

			
				["@method"] = { fg = cp.blue, style = { "italic" } },
				["@namespace"] = { fg = cp.rosewater, style = {} },

				["@punctuation.delimiter"] = { fg = cp.teal },
				["@punctuation.bracket"] = { fg = cp.overlay2 },
				["@type"] = { fg = cp.yellow },
				["@tag.attribute"] = { fg = cp.mauve, style = { "italic" } },
				["@tag"] = { fg = cp.peach },
				["@tag.delimiter"] = { fg = cp.maroon },
				["@text"] = { fg = cp.text },

		
				["@function.builtin.bash"] = { fg = cp.red, style = { "italic" } },
				["@parameter.bash"] = { fg = cp.yellow, style = { "italic" } },

				["@field.lua"] = { fg = cp.lavender },
				["@constructor.lua"] = { fg = cp.flamingo },

				["@constant.java"] = { fg = cp.teal },

				["@property.typescript"] = { fg = cp.lavender, style = { "italic" } },

				["@type.builtin.c"] = { fg = cp.yellow, style = {} },

				["@property.cpp"] = { fg = cp.text },
				["@type.builtin.cpp"] = { fg = cp.yellow, style = {} },
			}
		end,
	},
})

--ColorMyPencils('midnight')
vim.cmd.colorscheme('tokyonight')