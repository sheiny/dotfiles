" ============================== VUNDLE ==============================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

    " The NERDTree
    Plugin 'https://github.com/scrooloose/nerdtree.git'

    " Colorscheme Monokai
    Plugin 'https://github.com/sickill/vim-monokai.git'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" ============================== VUNDLE ==============================


"syntax highlightning on"
syntax on	syntax on
"show line number"
set number
"Don't break lines to fit page"
set nowrap
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"show the matching part of the pair for [] {} and ()"
set showmatch

" Plugin: ColorScheme Monokai
colorscheme monokai

"NERDTree"
"shortcut"
map <C-n> :NERDTreeToggle<CR>

