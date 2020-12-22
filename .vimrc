" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ========================= Plugin Manager ===========================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" specify the directory for plugins
call plug#begin('~/.vim/plugged')

" Colorscheme Gruvbox
Plug 'morhetz/gruvbox'

" Light Line
Plug 'itchyny/lightline.vim'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" comment multiple lines
Plug 'scrooloose/nerdcommenter'

" improve parenthesis highlighting
Plug 'frazrepo/vim-rainbow'

" Initialize plugin system
call plug#end()

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ============================= General ==============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" Enable filetype plugins
filetype on                 
filetype plugin on
filetype indent on

" Not bother pretending to be vi
set nocompatible
" Show line number"
set number
" Don't break lines to fit page"
set nowrap
" Show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" When indenting with '>', use 2 spaces width
set shiftwidth=2
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs
set smarttab
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
" Always show current position
set ruler
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Since Vim will source .vimrc from any directory you run Vim from, this is
" a potential security hole; so, you should consider setting secure option.
" This option will restrict usage of some commands in non-default .vimrc files;
" commands that write to file or execute shell commands are not allowed and map 
" commands are displayed.
set secure

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ============================== CTAGS ==============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" Highlights for autocomplete
" ^x^n for just this file
" ^x^f for filenames (only works with set path+=**)
" ^x^] for just tags
" ^n   for anything specified by complete option
" for more type :help ins-completion
"
" Use ^n and ^p to go back and forth in the suggestion list

" Create the 'tags' file
command! MakeTags !ctags -R --exclude=debug --exclude=release --exclude=build --exclude=.git

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ======================= ColorScheme Monokai  =======================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" enable syntax highlighting
syntax enable

" Syntax highlightning on"
syntax on

" enable 256 color pallete for the terminal
set t_Co=256

" dark color scheme
colorscheme gruvbox
set background=dark

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,mac,dos

" Make set vim transparency (this have to go after colorscheme def)
hi Normal guibg=NONE ctermbg=NONE

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ==================== Plugin NerdCommenter ===================
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ======================= Conquer of Completion ======================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Delete  without write clipboard
nnoremap d "_d
vnoremap d "_d

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" =================== Rainbow Parentheses Improved ===================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
let g:rainbow_active = 1

" Make set vim transparency (this have to go after colorscheme def)
hi Normal guibg=NONE ctermbg=NONE
