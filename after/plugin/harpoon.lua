local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local wk = require('which-key')

wk.register({
	h = {
		name = "harpoon",
		a = { mark.add_file, "Add File" },
		t = { ui.toggle_quick_menu, "Toggle Menu" },
		["1"] = { function() ui.nav_file(1) end, "Nav to File 1" },
		["2"] = { function() ui.nav_file(2) end, "Nav to File 2" },
		["3"] = { function() ui.nav_file(3) end, "Nav to File 3" },
		["4"] = { function() ui.nav_file(4) end, "Nav to File 4" },
	},
}, { prefix = "<leader>" })


