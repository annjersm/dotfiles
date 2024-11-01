vim.g.mapleader = " "

vim.keymap.set('i', "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-j>", ":cnext<cr>")
vim.keymap.set("n", "<C-k>", ":cprev<cr>")
vim.keymap.set("n", "<F10>", ":TransparentToggle<cr>")

function run_ctags ()
	vim.print('cTags')
	vim.cmd("autocmd BufWritePost *.c !ctags -R src/ <afile>")
	vim.cmd("autocmd BufWritePost *.h !ctags -R src/ <afile>")

	vim.cmd("autocmd BufWritePost *.cpp !ctags -R src/ <afile>")
	vim.cmd("autocmd BufWritePost *.hpp !ctags -R src/ <afile>")
end

function run_make_compile ()
	vim.print('make compile')
	vim.cmd("autocmd BufWritePost *.c make compile <afile>")
	vim.cmd("autocmd BufWritePost *.h make compile <afile>")

	vim.cmd("autocmd BufWritePost *.cpp make compile <afile>")
	vim.cmd("autocmd BufWritePost *.hpp make compile <afile>")
end

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files)
vim.keymap.set("n", "<leader>fg", builtin.git_files)

vim.keymap.set("n", "<leader>sh", builtin.help_tags)
vim.keymap.set("n", "<leader>sk", builtin.keymaps)
vim.keymap.set("n", "<leader>ss", builtin.builtin)
vim.keymap.set("n", "<leader>sw", builtin.grep_string)
vim.keymap.set("n", "<leader>sg", builtin.live_grep)
vim.keymap.set("n", "<leader>sd", builtin.diagnostics)
vim.keymap.set("n", "<leader>sr", builtin.resume)
vim.keymap.set("n", "<leader>s.", builtin.oldfiles)

