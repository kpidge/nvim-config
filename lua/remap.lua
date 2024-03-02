vim.g.mapleader = ","
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv==kgvo=kgvo", { desc = "Move highlighted text down" })
vim.keymap.set("v", "<A-k>", ":m '>-2<CR>gv==jgvo=jgvo", { desc = "Move highlighted text up" })
vim.keymap.set("i", "<A-j>", "<esc>:m+1<CR>==i", { desc = "Move line down" })
vim.keymap.set("i", "<A-k>", "<esc>:m-2<CR>==i", { desc = "Move line up" })
