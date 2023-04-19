local builtin = require('telescope.builtin')
local wk = require('which-key')

function grep_cmd()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end

wk.register({
	f = {
		name = "file",
		b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { grep_cmd, "Grep" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		s = { "<cmd>Telescope lsp_document_symbols<cr>", "List Buffer Symbols" },
		l = { "<cmd>Telescope lsp_references<cr>", "List Symbol References" },
		e = { "<cmd>enew<cr>", "Edit File" },
	}
}, { prefix = "<leader>" })


