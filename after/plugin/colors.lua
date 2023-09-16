function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
end

require('monokai').setup({
	italics = false,
	custom_hlgroups = {
		LineNr = {
			fg = 'none',
			bg = 'none'
		}
	}
})

--ColorMyPencils('tokyonight')

function CatMyPencils()
	require('catppuccin').setup({
		flavour = 'mocha',
		transparent_background = true,
		styles = {
			comments = { "italic" },
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
			macchiato = {
				rosewater = "#ebb9b9",
				flamingo = "#F2CDCD",
				mauve = "#DDB6F2",
				pink = "#f6bbe7",
				red = "#F28FAD",
				maroon = "#E8A2AF",
				peach = "#f5c9a5",
				yellow = "#e6dfb8",
				green = "#ABE9B3",
				blue = "#b8deeb",
				sky = "#89DCEB",
				teal = "#B5E8E0",
				lavender = "#cddbf9",

				steel = '#63718b',
				deepsteel = '#3d4059',

				text = "#D9E0EE",
				subtext1 = "#BAC2DE",
				subtext0 = "#A6ADC8",
				overlay2 = "#C3BAC6",
				overlay1 = "#988BA2",
				overlay0 = "#6E6C7E",
				surface2 = "#6E6C7E",
				surface1 = "#575268",
				surface0 = "#302D41",

				base = "#20202a",
				mantle = "#1a1a24",
				crust = "#313449",
			}
		},
		highlight_overrides = {
			macchiato = function(cp)
				return {
					TabLineSel = { bg = cp.pink },
					CmpBorder = { fg = cp.surface2 },
					Pmenu = { bg = cp.none },
					TelescopeBorder = { link = "FloatBorder" },

					['@keyword'] = { fg = cp.rosewater },
					['@keyword.function'] = { fg = cp.rosewater },
					['@keyword.return'] = { fg = cp.rosewater },

					['@include'] = { fg = cp.rosewater },
					['@namespace'] = { fg = cp.yellow },

					['@function.builtin'] = { fg = cp.blue },
					['@function.call'] = { fg = cp.blue },
					['@function.macro'] = { fg = cp.blue },
					['@method.call'] = { fg = cp.blue },

					['@variable'] = { fg = cp.steel },
					['@parameter'] = { fg = cp.steel },

					['@punctuation.bracket'] = { fg = cp.steel },
					['@punctuation.delimiter'] = { fg = cp.steel },

					['@type'] = { fg = cp.blue },
					['@type.qualifier'] = { fg = cp.yellow },

					['@comment'] = { fg = cp.deepsteel, style = { 'italic' } },
				}
			end,
		},
	})

	vim.cmd.colorscheme('catppuccin-macchiato')
end

CatMyPencils()
