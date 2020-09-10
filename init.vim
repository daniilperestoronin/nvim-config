" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

"---------------------------------
"           VIM settings
"---------------------------------
set colorcolumn=121

set relativenumber

set nowrap
set number
set hlsearch
set incsearch

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=eol:→,tab:>.,space:.
set list

set encoding=utf-8

syntax on
filetype plugin on

set fillchars+=vert:\ 
set background=dark

"-------------------------------------------------------------------------------
"                                  PLUGINS
"-------------------------------------------------------------------------------

" Plugin setup preparation

let autoload_plug_path = stdpath('data') . '/site/autoload/plug.vim'
if !filereadable(autoload_plug_path)
      silent execute '!curl -fLo ' . autoload_plug_path . '  --create-dirs 
            \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet autoload_plug_path

call plug#begin('~/.local/share/nvim/plugged')

if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
    autocmd VimEnter * PlugInstall | q
endif

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" --- Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" --- Colorschemes
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

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
Plug 'posva/vim-vue'

" --- Tex
Plug 'lervag/vimtex'

" Initialize plugin system
call plug#end()

" Install Plugins
delc PlugUpgrade

"---------------------------------
"        Plugins settings
"---------------------------------

" --- colorscheme
let g:gruvbox_vert_split = 'bg2'
let g:gruvbox_number_column = 'bg1'

colorscheme gruvbox

"tab display only file name
let g:airline#extensions#tabline#fnamemod = ':t'

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
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" --- python-mode
let g:pymode_python = 'python3'

" --- Key mappings
map <leader>s :ToggleWorkspace<CR>
map<C-e> :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>

" --- Tex
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'

