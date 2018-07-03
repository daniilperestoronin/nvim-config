" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Tools
" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dkprice/vim-easygrep'
"Plug 'thaerkh/vim-workspace'
"Linting
"Plug 'w0rp/ale'
"Tagbar
Plug 'majutsushi/tagbar'


"Colorschemes
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf' , {'rtp': 'vim/'}


" Language support
" GO   
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"Python
Plug 'python-mode/python-mode'
" Vue:
Plug 'posva/vim-vue'

" Initialize plugin system
call plug#end()

" SETTINGS
colorscheme onehalfdark

set colorcolumn=81

set nowrap
set number
set hlsearch
set incsearch

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=eol:↵,tab:ˑˑ,space:ˑ
set list

syntax on

"tab display only file name
let g:airline#extensions#tabline#fnamemod = ':t'

"Plugins settings
"python-mode
let g:pymode_python = 'python3'

" vim-workspace settings
nnoremap <leader>s :ToggleWorkspace<CR>

" Key mappings
map<C-e> :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>


