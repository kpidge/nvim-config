local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "~/.config/nvim/snippets" } })

cmp.setup({
	mapping = cmp.mapping.preset.insert {
		['<C-S>'] = cmp.mapping.complete(),
		["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		['<CR>'] = cmp.mapping.confirm({select = true}),
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
	},
	preselect = 'item',
	sources = cmp.config.sources({
		{name = 'nvim_lua'},
		{name = 'nvim_lsp'},
		{name = 'luasnip'},
		{name = 'buffer'},
	}),
	completion = {
	  completeopt = 'menu,menuone,noinsert',
	},
	experimental = {
		ghost_text = true
	}
})
