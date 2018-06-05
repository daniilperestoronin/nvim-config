" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('C:\_soft\Neovim\share\nvim\runtime\plugin')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

"colorschemes
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()

colorscheme nord

set number
set hlsearch
set incsearch
syntax on

" Key mappings
map<C-n> :NERDTreeToggle<CR>