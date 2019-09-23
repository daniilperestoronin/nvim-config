" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

"-------------------------------------------------------------------------------
"                                  PLUGINS
"-------------------------------------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')

"---------------------------------
"              TOOLS
"---------------------------------

" --- Better file browser
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }

" --- vim-airline
Plug 'vim-airline/vim-airline'

" --- Class/module browser
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" --- Code and files fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'dkprice/vim-easygrep'

" --- Code completion 
Plug 'Shougo/deoplete.nvim', {'tag': '4.0-serial', 'do': ':UpdateRemotePlugins' }

" --- Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" --- Colorschemes
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'
Plug 'sonph/onehalf' , {'rtp': 'vim/'}

"---------------------------------
"        LANGUAGE SUPPORT
"---------------------------------

" --- Javascript
Plug 'pangloss/vim-javascript'

" --- GO
Plug 'fatih/vim-go', { 'for': ['go'] }

" --- Python
Plug 'python-mode/python-mode', { 'branch': 'develop' }

" ---  Vue:
" Plug 'posva/vim-vue'

" Initialize plugin system
call plug#end()

"-------------------------------------------------------------------------------
"                                    SETTINGS
"-------------------------------------------------------------------------------

"---------------------------------
"           VIM settings
"---------------------------------
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

set encoding=utf-8

syntax on
filetype plugin on

set fillchars+=vert:\ 
set background=dark
let g:gruvbox_vert_split = 'bg2'
let g:gruvbox_number_column = 'bg1'

colorscheme gruvbox

"tab display only file name
let g:airline#extensions#tabline#fnamemod = ':t'

" syntax highlighting
autocmd BufRead,BufNewFile *.vue setlocal filetype=javascript

"---------------------------------
"        Plugins settings
"---------------------------------

" --- fzf
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

" --- deoplete.nvim
let g:deoplete#enable_at_startup = 1

" --- vim-go
let g:go_gocode_autobuild = 1

" --- python-mode
let g:pymode_python = 'python3'

" --- Key mappings
map <leader>s :ToggleWorkspace<CR>
map<C-e> :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
