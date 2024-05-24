require 'plugins'

--vim.cmd (":source ~/.config/nvim/legacy.vim")

require 'remap'
require 'lsp'
require 'set'

run_ctags()
--run_make_compile()

vim.cmd "filetype on"
vim.cmd "filetype plugin on"
vim.cmd "filetype indent on"
vim.cmd "set number"
vim.cmd "set relativenumber"
vim.cmd "set guicursor=n-v-c-i:block-blinkon100-blinkoff100-blinkwait100"

vim.cmd 'colorscheme darkrose'
vim.cmd 'colorscheme test'
--vim.cmd "colorscheme tokyodark"
--vim.cmd 'colorscheme gruvbox'

require ('nvim-autopairs').setup {
}
require ('nvim-web-devicons').setup {
	override = {
		zsg = {
			icon = "",
			color = "#428850",
			cterm_color = "65",
			name = "Zsh"
		}
	},
	color_icons = true,
	default = true,
	strict = true,
}
require ('transparent').setup {
}
require ('nvim-treesitter').setup {
	ensure_installed = {
		"c",
		"cpp",
		"lua",
		"lua_ls",
		"vim",
		"vimdoc",
		"query"
	},
	sync_install = false,
	auto_install = true,
	ignore_install = {},
	highlight = {
		enable = true,
		disble = {},
		additional_vim_regex_highlighting = false,
	},
}
require ('telescope').setup {
	defaults = {
		layout_config = {
			vertical = { width = 0.5 },
		},
	},
}

require ('ibl').setup {
}
require ('hardline').setup {
	bufferline = false,
	bufferline_settings = {
		exclude_terminal = false,
		show_index = false,
	},
	theme = 'default',
	sections = {
		{class = 'mode', item = require ('hardline.parts.mode').get_item},
		{class = 'high', item = require ('hardline.parts.git').get_item, hide = 100},
		{class = 'med',  item = require ('hardline.parts.filename').get_item},
		'%<',
		{class = 'med',  item = '%='},
		{class = 'low',  item = require ('hardline.parts.wordcount').get_item, hite = 100},
	--	{class = 'error', item = require ('harline.parts.lsp').get_error},
	--	{class = 'warning', item = require ('hardline.parts.lsp').get_warning},
		{class = 'warning', item = require ('hardline.parts.whitespace').get_item},
		{class = 'high', item = require ('hardline.parts.filetype').get_item, hide = 60},
		{class = 'mode', item = require ('hardline.parts.line').get_item},
	},
}
require ('battery').setup {
	update_rate_seconds = 30,
	show_status_when_no_battery = true,
	show_plugged_icon = true,
	show_unplugged_icon = true,
	show_percent = true,
	vertical_icons = true,
	multible_battery_selection = 1,
}
require ('glow').setup {
}
require ('trouble').setup {
}
require 'colorizer'.setup()
