" NERDComment
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle

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

" FZF
let g:fzf_layout = { 'window': {
      \ 'width': 0.9,
      \ 'height': 0.8,
      \ 'highlight': 'Comment',
      \ 'rounded': v:false } }

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :BLines<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>' :Marks<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR> 

" Git Blame
let g:blamer_enabled = 1
let g:blamer_delay = 1000
let g:blamer_show_in_insert_modes = 0
nnoremap <Leader>gb :BlamerToggle<CR>

" JS config
let g:vim_jsx_pretty_colorful_config = 1
let g:polyglot_disabled = ['jsx', 'tsx', 'js', 'ts']
let g:vim_jsx_pretty_template_tags = ['html', 'jsx', 'tsx']
