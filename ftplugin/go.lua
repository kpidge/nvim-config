vim.g.maplocalleader = ','
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { buffer=true })
