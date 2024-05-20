local wk = require('which-key')

wk.register({
	c = {
		name = "clipboard",
		p = { "\"+p", "Paste from Clipboard" },
		x = { "\"_dp", "Paste without clearing buffer" },
		y = { "\"+y", "Yank into Clipboard" },
		Y = { "\"+Y", "Yank into Clipboard" },
	},
	p = {
		name = "misc.",
		v = { vim.cmd.NvimTreeToggle, "Toggle NvimTree" }
	}
}, { prefix = "<leader>" })
