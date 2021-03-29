call plug#begin('~/.config/nvim/bundle')
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'kien/ctrlp.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-eslint',
  Plug 'neoclide/coc-prettier',
call plug#end()

let g:coc_global_extensions = [
    \ 'coc-tsserver'
    \ ]
