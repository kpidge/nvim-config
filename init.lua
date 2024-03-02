require('remap') -- Needs to be first due to leader remap?
require('plugins')
require('lualine_config')
require('nvimtree')
require('treesitter')
require('treesitter_ctx')
require('telescope_config')
require('lsp')
require('null_ls')
require('cmp_cfg')
require('snippets')
require('catppuccin_config')
require('harpoon_config')

vim.cmd.colorscheme "catppuccin"
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd.filetype({ "plugin", "indent", "on" })

function get_code_actions()
	local range = {['start']={1,0}, ['end']={-1, -1}}
	local diagnostics = vim.diagnostic.get()
	return vim.lsp.buf.code_action({context = { diagnostics = diagnostics }, range = range })
end
