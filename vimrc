"#####################"
" Appearance Settings "
"#####################"

set background=dark
colorscheme solarized

" Set terminal colours:
set t_Co=256

" Syntax highlighting (enable keeps colour settings):
syntax on
syntax enable

"######################"
" General Vim Settings "
"######################"

" Drops backwards compatibility for newer features:
set nocompatible

" Disable 'no write since last change' warning:
set hidden

" Hide buffer when not in window:
set bufhidden=hide

" Disable backup/swap files:
set nobackup
set noswapfile

" Auto-read if file is changed externally:
set autoread

" File type awareness:
filetype plugin indent on

" Indenting (prefer cindent to smartindent):
set cindent
set autoindent

" Vim command line history (used with: /,:,@):
set history=1000
set undolevels=1000

" Viminfo (the file where buffers are stored):
set viminfo='100,f1,<50,!,h,s10

" Prevent Vim from moving cursor to ^ on buffer change:
set nostartofline

" Enable line numbers:
set number

" Tab stuff (mostly for Python):
set smarttab
set tabstop=4
set expandtab
set shiftwidth=4

" Set backspace to work traditionally:
set bs=2

" Searching:
set incsearch
set ignorecase
set smartcase     " case insensitive if lowercase
set hlsearch      " Highlight search terms
set incsearch     " Show search matches typed

" Status line and user interface:
set laststatus=2
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]\ %{fugitive#statusline()}
set ruler "Always show current position
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set showmatch

" Wildmenu
set wildmenu
set wildmode=longest:full,full
set wildignore+=*~,*.aux,tags

" Tags
set tags+=../tags,../../tags,../../../tags,../../../../tags

" Viminfo and history:
set history=50
set viminfo='100,f1,<50,!,h,s10

" Hide buffer when not in window
set bufhidden=hide

" Clipboard:
set clipboard=unnamed

" Remember last position in file:
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Emacs bindings for the command line:
cnoremap <C-A>        <Home>
cnoremap <C-E>        <End>
cnoremap <C-K>        <C-U>

" Tab completion and documentation
au FileType python set omnifunc=pythoncomplete#Complete

"#########################"
" Custom Editor Shortcuts "
"#########################"

" Assign a leader:
let mapleader = ","
let g:mapleader = ","

" Fast saving:
nmap <leader>s :w<cr>

" Map arrows to switch between open buffers:
map <right> :bn<cr>
map <left> :bp<cr>

" Remap 0 to start at begining of text:
map 0 ^

" and § to end ($):
map § $

" Unmapping superfluous commands:
map <F1> <Nop>
map Q <Nop>


" Close current buffer:
map <leader>bd :bd<CR>

"################"
" Misc Functions "
"################"

" Delete trailing white space:
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.rb :call DeleteTrailingWS()

"#########"
" Plugins "
"#########"

" Turn filetype off for Pathogen:
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on
