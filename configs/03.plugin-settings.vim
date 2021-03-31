" Set colorscheme
colorscheme gruvbox
" Set dark background
set background=dark

" Expand region
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink) 
call expand_region#custom_text_objects({
  \ "\/\\n\\n\<CR>": 1, 
  \ 'a]' :1, 
  \ 'ab' :1,
  \ 'aB' :1, 
  \ 'ii' :0,
  \ 'ai' :0
  \ })
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
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

nnoremap <silent> gs :call CocAction('jumpDefinition', 'drop')<CR>
nnoremap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nnoremap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>kj

" Multiple cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<c-n>'
let g:multi_cursor_select_all_word_key = '<a-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
