" Specify a directory for plugins                                                                                                                                                   
" - For Neovim: ~/.local/share/nvim/plugged                                                                                                                                         
" - Avoid using standard Vim directory names like 'plugin'                                                                                                                          
                                                                                                                                                                                    
"                                                                                                                                                                                   
" ------------PLUGINS                                                                                                                                                               
"                                                                                                                                                                                   
call plug#begin('~/.local/share/nvim/plugged')                                                                                                                                      
                                                                                                                                                                                    
" ------ TOOLS                                                                                                                                                                      
                                                                                                                                                                                    
" Better file browser                                                                                                                                                               
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dkprice/vim-easygrep'

" Class/module browser
Plug 'majutsushi/tagbar'

" Code and files fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ------ Colorschemes
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf' , {'rtp': 'vim/'}


" ------ Language support
" --- GO   
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" --- Python
Plug 'python-mode/python-mode', { 'branch': 'develop' }

" ---  Vue:
Plug 'posva/vim-vue'

" Initialize plugin system
call plug#end()

"
" ------------ SETTINGS
"

" ----- VIM settings
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

set encoding=utf-8
colorscheme onehalfdark

"tab display only file name
let g:airline#extensions#tabline#fnamemod = ':t'

" ----- Plugins settings

" fzf ------------------------------

" file finder mapping
nmap ,e :Files<CR>
" tags (symbols) in current file finder mapping
nmap ,g :BTag<CR>
" tags (symbols) in all files finder mapping
nmap ,G :Tag<CR>
" general code finder in current file mapping
nmap ,f :BLines<CR>
" general code finder in all files mapping
nmap ,F :Lines<CR>
" commands finder mapping
nmap ,c :Commands<CR>

"python-mode
let g:pymode_python = 'python3'

" vim-workspace settings

" Key mappings
map <leader>s :ToggleWorkspace<CR>
map<C-e> :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
