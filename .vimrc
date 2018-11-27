syntax on
set number
set nowrap

"NERDTree"
"shortcut"
map <C-n> :NERDTreeToggle<CR>

"mouse open files"
let NERDTreeMouseMode=2
augroup MouseInNERDTreeOnly
    autocmd!
    autocmd BufEnter NERD_tree_* set mouse=a
    autocmd BufLeave NERD_tree_* set mouse=
augroup END
set mouse=

"start vim with nerdtree, no need to vim"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"no closing nerd-tree when first opening a file"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"ctags"
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
