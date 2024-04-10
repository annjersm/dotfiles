local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-lua/plenary.nvim' --some lib maby?
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-tree/nvim-web-devicons'
 
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ojroques/nvim-hardline'
Plug 'ellisonleao/glow.nvim'
Plug 'xiyaowong/transparent.nvim'
Plug 'alaviss/nim.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'

-- telescope
Plug 'justinhj/battery.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'folke/trouble.nvim'
Plug 'windwp/nvim-autopairs'


vim.call('plug#end')
