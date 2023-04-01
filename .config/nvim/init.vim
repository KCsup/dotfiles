call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/html5.vim'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

Plug 'nvim-tree/nvim-tree.lua'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
Plug 'wintermute-cell/gitignore.nvim'

Plug 'ap/vim-css-color'

call plug#end()

lua << END
require('lualine').setup()
require("nvim-tree").setup()
END

colorscheme gruvbox
set number
set shiftwidth=4
set mouse=a
set colorcolumn=80

nnoremap <F3> :NvimTreeToggle<CR>

inoremap {<CR> {<CR>}<C-o>O
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>

