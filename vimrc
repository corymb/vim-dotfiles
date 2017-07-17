"#####################"
" Appearance Settings "
"#####################"

set background=dark

" Set terminal colours:
set t_Co=256

" Colorscheme must be after t_Co:
" colorscheme solarized

" Enable line numbers:
set number

" Syntax highlighting (enable keeps colour settings):
syntax enable

"##########"
" Settings "
"##########"

" Drops backwards compatibility for newer features:
set nocompatible

" File type awareness:
filetype plugin indent on

" Indenting (prefer cindent to smartindent):
" set cindent
" set autoindent

set clipboard=unnamed

" Vim command line history (used with: /,:,@):
set history=1000
set undolevels=1000

" Viminfo:
set viminfo=%,<800,'10,/50,:100,h,f0,n~/.vim/cache/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list

" Disable backup/swap files:
set nobackup
set noswapfile

" Auto-read if file is changed externally:
set autoread

" Disable 'no write since last change' warning:
set hidden

"#########################"
" Custom Editor Shortcuts "
"#########################"

" Assign a leader:
let mapleader = ","

" Fast saving:
nmap <leader>s :w<cr>

" Fast saving:
nmap <leader>bd :bd<cr>

" Map arrows to switch between open buffers:
map <right> :bn<cr>
map <left> :bp<cr>

"#########"
" Plugins "
"#########"

" Turn filetype off for Pathogen:
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype on

" NERDTree:
map <F2> :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['\.pyc$']

" MRU
map <F3> :MRU<cr>

" Searching:
if executable('rg')
  set grepprg=rg\ --vimgrep
endif

" FZF:
nmap <leader>t :FZF<cr>

" Airline:
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
set laststatus=2
