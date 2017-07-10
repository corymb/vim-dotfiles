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

" Drops backwards compatibility for newer features:
set nocompatible

" File type awareness:
filetype plugin indent on

" Indenting (prefer cindent to smartindent):
" set cindent
" set autoindent


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


"#########################"
" Custom Editor Shortcuts "
"#########################"

" Assign a leader:
let mapleader = ","

" Fast saving:
nmap <leader>s :w<cr>

" Map arrows to switch between open buffers:
map <right> :bn<cr>
map <left> :bp<cr>
