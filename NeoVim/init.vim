call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lualine/lualine.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/html5.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

lua << END
require('lualine').setup()
require("nvim-tree").setup()
END

colorscheme gruvbox
set number
set shiftwidth=4
set mouse=a

nnoremap <F3> :NvimTreeToggle<CR>

inoremap {<CR> {<CR>}<C-o>O
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

" Window Navigation with Ctrl-[hjkl]
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
