let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap           
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the timej
set formatoptions-=t
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set nu
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set noswapfile
set t_Co=256                            " Support 256 colors
set nojoinspaces
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set ttimeout
set ttimeoutlen=10
set lazyredraw
set formatoptions-=cro                  " Stop newline continution of comments
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

" General
nnoremap <C-s> :w<CR>
nnoremap rr :source %<CR>
inoremap jk <ESC> 
inoremap kj <ESC> 

" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Unmap key
"inoremap <Esc> <nop>
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
inoremap <c-l> <ESC>viwui
nnoremap <c-u> viwU<ESC>
nnoremap <c-l> viwu<ESC>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go to bac
nnoremap <S-TAB> :bprevious<CR>

" Switch window
nnoremap <C-\> :vsplit<CR>
xnoremap <C-\> :vsplit<CR>
inoremap <C-\> <Esc>:vsplit<CR>
nnoremap <A-q> <C-w><C-w>

" Remap scrolling
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Use alt + hjkl to resize windows
nnoremap <A-j>    :resize -2<CR>
nnoremap <A-k>    :resize +2<CR>
nnoremap <A-h>    :vertical resize -2<CR>
nnoremap <A-l>    :vertical resize +2<CR>

" Source nvim
nnoremap <Leader>sv :source ~/.config/nvim/init.vim<CR>
