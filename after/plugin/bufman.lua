local bufman = require('buffer_manager').setup({})
local ui = require('buffer_manager.ui')
local wk = require('which-key')

wk.register({
	b = {
		name = "buffer manager",
		t = { ui.toggle_quick_menu, "Toggle Menu" },
	},
}, { prefix = '<leader>' })
