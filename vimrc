set nocompatible              " be iMproved, required
filetype off                  " required
set hlsearch
set ttyfast
set lazyredraw
set number
set regexpengine=1
set noshowcmd
set synmaxcol=200
set guifont=Inconsolata:h15
set linespace=1
set autoindent
set guioptions=
"set guifont=Menlo:h15

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Yggdroot/indentLine'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
" vim airline buffer assist "
Plugin 'vim-airline/vim-airline'
Plugin 'Chiel92/vim-autoformat'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'JuliaLang/julia-vim'
" GRUVBOX visuals
Plugin 'morhetz/gruvbox'
" NERDTREE branch manager
Plugin 'scrooloose/nerdtree'
" Autocomplete brackets
Plugin 'jiangmiao/auto-pairs'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'ayu-theme/ayu-vim' 
" Visualise indents 
Plugin 'michaeljsmith/vim-indent-object'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let g:indentLine_char_list = '|'
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
set backspace=indent,eol,start
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set redrawtime=7500

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" vimdiff color options
highlight DiffAdd       cterm=none ctermfg=green        ctermbg=none
highlight DiffDelete    cterm=none ctermfg=darkred      ctermbg=none
highlight DiffChange    cterm=none ctermfg=none         ctermbg=none
highlight DiffText      cterm=none ctermfg=14       ctermbg=none

nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

imap <silent> <D-Up> :wincmd k<CR>
vmap <silent> <D-Up> :wincmd k<CR>
nmap <silent> <D-Up> :wincmd k<CR>

imap <silent> <D-Down> :wincmd j<CR>
vmap <silent> <D-Down> :wincmd j<CR>
nmap <silent> <D-Down> :wincmd j<CR>

imap <silent> <D-Left> :wincmd h<CR>
vmap <silent> <D-Left> :wincmd h<CR>
nmap <silent> <D-Left> :wincmd h<CR>

imap <silent> <D-Right> :wincmd l<CR>
vmap <silent> <D-Right> :wincmd l<CR>
nmap <silent> <D-Right> :wincmd l<CR>


let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set cursorline
hi StatusLineNC                guifg=#000000     guibg=#CD5C5C    cterm=NONE
hi StatusLine                  guifg=#CD5C5C     guibg=#000000     cterm=NONE
