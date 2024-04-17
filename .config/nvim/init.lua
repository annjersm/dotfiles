require ('plugins')

vim.cmd (":source ~/.config/nvim/legacy.vim")

vim.g.mapleader = " "
vim.keymap.set("n", "<F3>", ":vs ~/.config/nvim/init.lua<cr>")
vim.keymap.set("n", "<C-F3>", ":source ~/.config/nvim/init.lua<cr>")
vim.keymap.set("n", "<C-j>", ":cnext<cr>")
vim.keymap.set("n", "<C-k>", ":cprev<cr>")


require ('lsp')


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
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sh", builtin.help_tags)
vim.keymap.set("n", "<leader>sk", builtin.keymaps)
vim.keymap.set("n", "<leader>f", builtin.find_files)
vim.keymap.set("n", "<leader>ss", builtin.builtin)
vim.keymap.set("n", "<leader>sw", builtin.grep_string)
vim.keymap.set("n", "<leader>sg", builtin.live_grep)
vim.keymap.set("n", "<leader>sd", builtin.diagnostics)
vim.keymap.set("n", "<leader>sr", builtin.resume)
vim.keymap.set("n", "<leader>s.", builtin.oldfiles)

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
