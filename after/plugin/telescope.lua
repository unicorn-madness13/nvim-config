local telescope = require('telescope')
local builtin = require('telescope.builtin')
local wk = require('which-key')

telescope.setup({
	defaults = {
		file_ignore_patterns = { 
			".cache\\",
			".cargo\\",
			".git\\",
			".vs\\",
			".vscode\\",
			"target\\",
			"build\\",
			"dist\\",
			"venv.*\\",
		},
	},
})

telescope.load_extension('workspaces')

function grep_cmd()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end

function list_document_symbols()
	builtin.lsp_document_symbols({
		symbols = { "class", "method", "function", "struct", "enum" }
	})
end

wk.register({
	f = {
		name = "file",
		b = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { grep_cmd, "Grep" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		s = { list_document_symbols, "List Buffer Symbols" },
		l = { "<cmd>Telescope lsp_references<cr>", "List Symbol References" },
		e = { "<cmd>enew<cr>", "Edit File" },
		w = { "<cmd>Telescope workspaces<cr>", "List Workspaces" },
	}
}, { prefix = "<leader>" })


