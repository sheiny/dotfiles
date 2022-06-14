" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ============================= General ==============================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" Enable filetype plugins
filetype on                 
filetype plugin on
filetype indent on
set autoindent

" Map caps key to esc
"map <caps> <esc>

" Delete  without write clipboard
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

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
"map <caps> <esc>
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
command! MakeTags !ctags -R --exclude=debug --exclude=release --exclude=build --exclude=.git --exclude=CMakeFiles --exclude=CMakeCache.txt

" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
" ======================= ColorScheme Monokai  =======================
" ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

" enable syntax highlighting
syntax enable

" Syntax highlightning on"
syntax on

" enable 256 color pallete for the terminal
"set t_Co=256

" dark color scheme
"colorscheme gruvbox
"set background=dark

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,mac,dos

" Make set vim transparency (this have to go after colorscheme def)
"hi Normal guibg=NONE ctermbg=NONE

