" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

    " The NERDTree
    Plug 'https://github.com/scrooloose/nerdtree.git'

    " Colorscheme Monokai
    Plug 'https://github.com/sickill/vim-monokai.git'

" Initialize plugin system
call plug#end()




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

