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

Plug 'preservim/nerdtree'

call plug#end()

lua << END
require('lualine').setup()
END

colorscheme gruvbox
set number
set shiftwidth=4
set mouse=a

nnoremap <F3> :NERDTreeToggle<CR>

inoremap {<CR> {<CR>}<C-o>O
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

