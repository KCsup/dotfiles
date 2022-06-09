call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

lua << END
require('lualine').setup()
END

colorscheme gruvbox
set number
set shiftwidth=4
set mouse=a

inoremap {<CR> {<CR>}<C-o>O
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>
