local lsp = require('lsp-zero').preset('recommended')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  'lua_ls',
  'pyright',
})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').svelte.setup{
	settings = {
		svelte = {
			plugin = {
				typescript = {enable = true}
			}
		}
	}
}

lsp.setup()
