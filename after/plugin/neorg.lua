local neorg = require('neorg')

neorg.setup({
	load = {
		["core.defaults"] = {}, -- default behavior
		["core.norg.concealer"] = {}, -- adds pretty icons to documents
		-- manages neorg workspaces
		["core.norg.dirman"] = { 
			config = {
				workspaces = {
					notes = "~/notes",
				},
			},
		},
	},
})
