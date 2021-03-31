let mapleader="\<Space>"

" Set colorscheme
colorscheme gruvbox
" Set dark background
set background=dark

" NERDTree
nnoremap <A-s> :NERDTreeFind<CR>
nnoremap <Leader>s :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" NERDComment
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree 

" crtlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|dist|build)|(\.(git|hg|svn))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \} 
let g:ctrlp_show_hidden=1

" Coc config
let g:coc_global_extensions = [
    \ 'coc-tsserver'
    \  ]
let g:coc_snippet_next = '<tab>'
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Multiple cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
