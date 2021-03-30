" Set colorscheme
colorscheme gruvbox
" Set dark background
set background=dark

" NERDTree
nnoremap <A-s> :NERDTreeFind<CR>
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

" Coc config
let g:coc_global_extensions = [
    \ 'coc-tsserver'
    \  ]
let g:coc_snippet_next = '<tab>'
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<TAB>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

nnoremap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nnoremap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nnoremap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>kj
