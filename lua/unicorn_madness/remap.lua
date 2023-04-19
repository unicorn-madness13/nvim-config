local wk = require('which-key')

vim.g.mapleader = " "

-- these two remaps do the same thing as <ALT+UP/DOWN> in VSCode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

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

-- Q is the worst place in the universe apparently
vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

