"
" .vimrc
"
" Tested on: Gentoo-9.0.1627
"

" don't enforce the plain vi compatibility
set nocompatible

" detect file type
filetype on
" load file type related indent files
filetype indent on
" indent new line as the previous one
set autoindent
" improved new line auto-indenting
set smartindent
" copy the previous indentation
set copyindent

" convert Tab to spaces
set expandtab
" when shifting use defined width
set shiftround
" use 4 spaces when shifting
set shiftwidth=4
" when tabing use defined width
set smarttab
" use 4 spaces when tabing
set tabstop=4
" use 4 spaces when editing
set softtabstop=4

" enable syntax highlight
syntax on
" display cursor position x,y
set ruler
" highlight current row
set cursorline
" use underline with default color
hi CursorLine cterm=underline ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" use yellow background with black text
hi CursorLineNr cterm=NONE ctermbg=yellow ctermfg=black guibg=yellow guifg=black
" number lines
"set number
" show 2 bottom rows as status
set laststatus=2
" hide the editing mode since using vim-airline plugin
set noshowmode
" highliht matching parenthesis
set showmatch

" disable the irritating bells
set noerrorbells
set novisualbell

" set utf8 as standard encoding
set encoding=utf8

" prefer LF as the standard file type
set ffs=unix,dos,mac

" visualize unwanted characters
set list
" Tab, nonbreaking space and trailing spaces
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" search as type
set incsearch
" enable search highlight by default
set hlsearch
" default to case insensitive search
set ignorecase
" enable case sensitive search when a query contains a capital letter
set smartcase
" turn off search highlight on <leader> followed by Esc
nnoremap <leader><Esc> :nohlsearch<CR>

" warn when closing a modified file
set confirm
" enable visual auto-complete for command menu
set wildmenu
" enable bash-like auto-complete menu
"set wildmode=list:longest
" select by Tab
set wildchar=<TAB>

" undo files dir - 'mkdir -p ~/.cache/vim' or goes to '/tmp'
set undofile
set undodir=~/.cache/vim,/tmp
" backup files dir
set backupdir=~/.cache/vim,/tmp
" swap store dir
set directory=~/.cache/vim,/tmp

" draw only what needs to be drawn - save cycles
set lazyredraw
" enable fast character drawing (used under urxvt)
set ttyfast
" don't use the horrible modelines
set nomodeline

" remember 100 searches and chagnes
set history=100
" reload file when changed outside of Vim
set autoread

" backspace delete everything
set backspace=indent,eol,start
" allow cursor keys in Insert mode
"set esckeys

" disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Populate dictionary with Powerline symbols. Requires:
" app-vim/pathogen, app-vim/airline and app-vim/airline-themes
let g:airline_powerline_fonts=1
" Use customized Solarized theme
let g:airline_theme='solarizedfix'

" Use the Solarized Dark theme variant
let g:airline_solarized_bg='dark'

if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif

" Unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline/Powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
