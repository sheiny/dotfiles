" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ============================== VUNDLE ==============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

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

    " Light Line
    Plugin 'https://github.com/itchyny/lightline.vim.git'

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

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ============================= Configs ==============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" Not bother pretending to be vi
set nocompatible
" Syntax highlightning on"
syntax on
" Show line number"
set number
" Don't break lines to fit page"
set nowrap
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Show the matching part of the pair for [] {} and ()"
set showmatch
" Search down into subfolders
" Provides a tab-completion for all file-related tasks
set path+=**
" Display all matching files when we tab complete
set wildmenu
" set default clip register to + which is the OS register
set clipboard=unnamedplus
" Map caps key to esc
map <caps> <esc>

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ============================== CTAGS ==============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" Create the 'tags' file
command! MakeTags !ctags -R --exclude=debug --exclude=release --exclude=build --exclude=.git

" Highlights for autocomplete
" ^x^n for just this file
" ^x^f for filenames (only works with set path+=**)
" ^x^] for just tags
" ^n   for anything specified by complete option
" for more type :help ins-completion
"
" Use ^n and ^p to go back and forth in the suggestion list

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ======================= ColorScheme Monokai  =======================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

colorscheme monokai

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" =========================== Light Line  ============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ }
      \ }
function! LightLineFilename()
    return expand('%')
endfunction

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ============================= NERDTree =============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
map <C-n> :NERDTreeToggle<CR>
