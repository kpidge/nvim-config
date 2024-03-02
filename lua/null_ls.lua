local null_ls = require("null-ls")

null_ls.setup({
	debug = true,
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.prettier.with{
			extra_filetypes = { "svelte" },
		},
		-- null_ls.builtins.formatting.gofmt,
		-- null_ls.builtins.formatting.spell,
	},
})
