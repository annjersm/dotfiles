filetype on
filetype plugin on
filetype indent on

set number
set relativenumber
set cursorline
set shiftwidth=8
set tabstop=8
set colorcolumn=80
set incsearch
set showcmd
set mouse=nvi
set termguicolors




" set colorscheme
colorscheme gruvbox
":colorscheme habamax
"colorscheme koehler


" commnads
"treesitter
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>

" auto commands

