" this is where plugins go!
call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
"Plug 'bling/vim-airline'
call plug#end()


" minor qol
filetype plugin indent on
set number
set encoding=utf-8
set history=1000

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab

" terrible airline customization
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'

" colors!
hi LineNr ctermbg=darkGrey
hi LineNr ctermfg=red

" Better movement
" updown wrapping
map j gj
map k gk
map <Down> gj
map <Up> gk
set whichwrap+=<,>,h,l,[,] " wrapping if you press right too much.

