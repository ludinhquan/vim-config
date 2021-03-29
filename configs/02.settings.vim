set nowrap           
set formatoptions-=t
set nu
set noswapfile
set nojoinspaces
set ttimeout
set ttimeoutlen=10
set cursorline
set clipboard^=unnamedplus
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set pastetoggle=<F3>
set autoindent
set smartindent
set autoread
set autowrite

let mapleader="\<Space>"

" General
nnoremap <Leader>w :w<CR>
nnoremap rr :source %<CR>
inoremap jk <ESC> 

" Unmap key
inoremap <Esc> <nop>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>

" Switch window
nnoremap <C-\> :vsplit<CR>
xnoremap <C-\> :vsplit<CR>
inoremap <C-\> <Esc>:vsplit<CR>
nnoremap <A-q> <C-w><C-w>

" Remap scrolling
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>

