"syntax highlightning on"
syntax on
"use monokai theme"
colorscheme monokai
"show line number"
set number
"Don't break lines to fit page"
set nowrap

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"use autoindent"
set autoindent
"use smartindent"
set smartindent
"show the matching part of the pair for [] {} and ()"
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1

"enable powerline plugin"
let g:powerline_pycmd="py3"


"t_SI = when enters insert mode"
"t_SR = when enters replace mode"
"t_EI = when leaving insert or replace mode"
if &term =~ "xterm"
    let &t_SI = "\<Esc>]12;purple\x7"
    let &t_SR = "\<Esc>]12;red\x7"
    let &t_EI = "\<Esc>]12;orange\x7"
endif

" Disable all vim's cursor blinking:
set guicursor+=a:blinkon0

"NERDTree"
"shortcut"
map <C-n> :NERDTreeToggle<CR>

"For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3

"start vim with nerdtree, no need to vim"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"no closing nerd-tree when first opening a file"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"ctags"
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
