local lsp = require('lsp-zero')
local cmp = require('cmp')
local config = require('lspconfig')
local mason = require('mason')
local mason_lsp_config = require('mason-lspconfig')
local wk = require('which-key')

lsp.preset('recommended')

mason.setup({})
mason_lsp_config.setup({
	ensure_installed = {'tsserver', 'eslint', 'clangd', 'rust_analyzer', 'gopls'},
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = { }
})

local on_attach = function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	wk.register({
		v = {
			name = "code actions",
			d = { vim.diagnostic.open_float, "Show Diagnostics", opts },
			f = { function() vim.lsp.buf.format { async = true } end, "Format Code", opts },
			["ca"] = { vim.lsp.buf.code_action, "Code Action", opts },
			["rn"] = { vim.lsp.buf.rename, "Rename", opts },
			["rr"] = { vim.lsp.buf.references, "References", opts },
			["ws"] = { vim.lsp.buf.workspace_symbol, "Workspace Symbols", opts },
		}
	}, { prefix = "<leader>" })

	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end

lsp.on_attach(on_attach)
lsp.setup()

local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	completion = {
		autocomplete = false,
		completeopt = "menu,menuone,noselect",
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end
	},
	sources = {
    	{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	},
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		['<CR>']  = cmp.mapping.confirm({ select = true }),
		['<C-e>'] = cmp.mapping.complete(),
	}
})

local lsp_flags = {
	debounce_text_changes = 150,
}
config['clangd'].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

config['rust_analyzer'].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

config['gopls'].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	cmd = { "gopls", "serve" },
	filetypes = { "go", "gomod" },
})

vim.diagnostic.config({
	virtual_text = false,
	underline = false,
	signs = false
})
