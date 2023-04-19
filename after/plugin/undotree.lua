local wk = require('which-key')

wk.register({
	u = {
		name = 'undotree',
		t = { vim.cmd.UndotreeToggle, 'Toggle UndoTree' },
	},
}, { prefix = '<leader>' })

