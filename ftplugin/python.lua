vim.g.maplocalleader = ','

-- Set the compiler to ruff
vim.api.nvim_cmd({ cmd = "compiler", args = { "ruff" } }, {})
vim.keymap.set('n', '<LocalLeader>l', ':make %<CR><CR>:cope<CR>', { buffer = 0 })

-- TODO: Sort out formatting with gq/= & range formatting
vim.keymap.set('n', '<leader>f', function ()
	vim.lsp.buf.format({ name = "null-ls" })
end, { buffer=true })
