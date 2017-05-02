" load up pathogen and all bundles
call pathogen#infect()
call pathogen#helptags()
set encoding=utf-8
filetype off
syntax on
filetype plugin indent on
set background=dark
let g:solarized_termcolors=256
" set t_Co=256
" solarized options 
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized
set tabstop=4
set laststatus=2 "display status line
set shiftwidth=4
set expandtab
set smarttab
set number
set ruler
set clipboard=unnamed             " use the system clipboard
set ruler                         " show row and column in footer
set wildmenu                      " enable bash style tab completion
set incsearch                     " show search results as I type
let mapleader = ","
" ctrlp config
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0

" remap ESC
imap jj <Esc>
" highlight the status bar when in insert mode
au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
au InsertLeave * hi StatusLine ctermbg=240 ctermfg=223

" put git status, column/row number, total lines, and percentage in status
set ttimeoutlen=50
let g:airline_theme = 'molokai'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
set backspace=indent,eol,start

" Mundo stuff
nnoremap <F5> :MundoToggle<CR>
nnoremap <F4> :NERDTreeToggle<CR>
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>
