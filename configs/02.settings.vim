let g:mapleader = "\<Space>"

set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap           
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the timej
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set nu
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set noswapfile
set nojoinspaces
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set ttimeout
set ttimeoutlen=10
set lazyredraw
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
set relativenumber

if (has("termguicolors"))
  set termguicolors
endif

" Theme
syntax enable
colorscheme gruvbox

" General
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>li
nnoremap rr :source %<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>qa :qa!<CR>
inoremap jk <ESC>
inoremap kj <ESC>

" Move pane
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Delete all line selected
nnoremap <C-x> Vx
xnoremap <C-k> Vx

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

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Split window
nnoremap <C-\> :vsplit<CR>
xnoremap <C-\> :vsplit<CR>
inoremap <C-\> <Esc>:vsplit<CR>
nnoremap <A-q> <C-w><C-w>

" Remap scrolling
nnoremap <C-k> <C-u>
nnoremap <C-j> <C-d>
nnoremap l w
nnoremap h b
nnoremap L l
nnoremap H h
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>^

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Source nvim
nnoremap <Leader><Leader>r :source ~/.config/nvim/init.vim<CR>

" Insert new line
nnoremap <CR> A<CR>

" Backspace
inoremap <C-BS> <C-\><C-o>db
nnoremap <BS> li<BS>
