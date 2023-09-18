local mkdnflow = require('mkdnflow')

mkdnflow.setup({
	new_file_template = {
		template = [[
# {{ title }}

Date: {{ date }}
		]],
		placeholders = {
			before = {
				date = function()
					return os.date('%A, %B %d, %Y')
				end
			},
			after = {
				filename = function()
					return vim.api.nvim_buf_get_name(0)
				end
			},
		},
	},
	perspective = {
		priority = 'root',
		root_tell = 'index.md',
	},
})
