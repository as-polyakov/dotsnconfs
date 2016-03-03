filetype plugin indent on
syntax on
set background=dark
let g:solarized_termcolors=256
"set t_Co=256
" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
syntax on
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
call plug#end()
