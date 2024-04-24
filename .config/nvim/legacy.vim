"filetype on
"filetype plugin on
"filetype indent on

"set number
"set relativenumber
set cursorline
set shiftwidth=8
set tabstop=8
"set colorcolumn=80
set incsearch
set showcmd
set mouse=nvi
set termguicolors

set guicursor=n-v-c-i-r-cr-o-sm-ci-ve:block

autocmd BufWritePost *.c make compile <afile>
autocmd BufWritePost *.h make compile <afile>
autocmd BufWritePost *.cpp make compile <afile>
autocmd BufWritePost *.hpp make compile <afile>


" set colorscheme
"colorscheme gruvbox
"colorscheme tokyodark
"colorscheme habamax
"colorscheme koehler
