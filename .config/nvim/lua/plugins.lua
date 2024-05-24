local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'nvim-lua/plenary.nvim' --some lib maby?
Plug 'nvim-tree/nvim-web-devicons'
 
-- LSP : Start
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
-- LSP : End

-- Colorsheme
Plug 'bluz71/vim-moonfly-colors'
Plug 'ray-x/aurora'
Plug 'maxmx03/fluoromachine.nvim'
Plug 'hachy/eva01.vim'
Plug 'water-sucks/darkrose.nvim'
Plug 'Shadorain/shadotheme'

Plug 'NvChad/nvim-colorizer.lua'
Plug 'lukas-reineke/indent-blankline.nvim' -- Indent Blankline
Plug 'RRethy/vim-illuminate'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'ojroques/nvim-hardline'
Plug 'ellisonleao/glow.nvim'
Plug 'xiyaowong/transparent.nvim'
Plug 'alaviss/nim.nvim'
Plug 'BurntSushi/ripgrep'
-- telescope
Plug 'justinhj/battery.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'folke/trouble.nvim'
Plug 'windwp/nvim-autopairs'

Plug 'AlexvZyl/nordic.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'folke/tokyonight.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'tiagovla/tokyodark.nvim'
Plug 'rafamadriz/neon'

vim.call('plug#end')
