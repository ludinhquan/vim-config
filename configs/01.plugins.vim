" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
 endif

call plug#begin('~/.config/nvim/bundle')
  Plug 'tpope/vim-fugitive'
  Plug 'morhetz/gruvbox'
  Plug 'mhartington/oceanic-next'
  Plug 'scrooloose/nerdtree'
  Plug 'preservim/nerdcommenter'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'sheerun/vim-polyglot'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'neoclide/coc-eslint',
  Plug 'neoclide/coc-prettier',
  Plug 'terryma/vim-multiple-cursors'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'preservim/tagbar'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'APZelos/blamer.nvim'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'itchyny/lightline.vim'
 call plug#end()
