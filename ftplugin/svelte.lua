vim.g.maplocalleader = ','

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0
vim.api.nvim_set_option_value("fo", "tqjcro", {scope="local"})

-- TODO: Sort out formatting with gq/= & range formatting
vim.keymap.set('n', '<leader>lf', function ()
	-- vim.lsp.buf.format({ name = "null-ls" })
	vim.lsp.buf.format()
end, { buffer=true })
