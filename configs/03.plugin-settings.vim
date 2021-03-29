" NERDTree
nnoremap <A-s> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" NERDComment
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p | :q

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
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
