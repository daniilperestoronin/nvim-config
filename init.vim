Specify a directory for plugins 
" - For Neovim: ~/.local/share/nvim/plugged 
" - Avoid using standard Vim directory names like 'plugin' 
call plug#begin('~/.local/share/nvim/plugged') 

" Tools
" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
" vim-airline 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 

"Colorschemes 
Plug 'arcticicestudio/nord-vim' 

" Language support
" GO
Plug 'fatih/vim-go', { 'tag': '*' } 
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' } 
" Vue
Plug 'posva/vim-vue'

" Initialize plugin system 
call plug#end() 

" Settings
colorscheme nord 
set number 
set hlsearch 
set incsearch 
syntax on 

" Key mappings 
map<C-n> :NERDTreeToggle<CR>

