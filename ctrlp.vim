" " +++ CtrlP +++
" let g:ctrlp_match_window_bottom = 0
" let g:ctrlp_max_height = 10
" let g:ctrlp_mruf_max = 250
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn|build)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
"   \ }
"
" func! MyPrtMappings()
"   let g:ctrlp_prompt_mappings = {
"   \ 'AcceptSelection("e")': ['<c-t>'],
"   \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
"   \ }
" endfunc
"
" func! MyCtrlPTag()
" let g:ctrlp_prompt_mappings = {
" \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
" \ 'AcceptSelection("t")': ['<c-t>'],
" \ }
" CtrlPBufTag
" endfunc
"
" let g:ctrlp_buffer_func = { 'exit': 'MyPrtMappings' }
" com! MyCtrlPTag call MyCtrlPTag()
"
" let g:ctrlp_buftag_types = {
" \ 'go'         : '--language-force=go --golang-types=ftv',
" \ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
" \ 'markdown'   : '--language-force=markdown --markdown-types=hik',
" \ 'objc'       : '--language-force=objc --objc-types=mpci',
" \ 'rc'         : '--language-force=rust --rust-types=fTm'
" \ }
" let g:ctrlp_cmd = 'CtrlPMixed'
" " let g:ctrlp_by_filename = 1
" let g:ctrlp_by_filename = 0
" let g:ctrlp_match_window = 'top,order:ttb'
" let g:ctrlp_switch_buffer = 'et'
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" let g:ctrlp_use_caching = 0
" let g:ctrlp_open_new_file = 'et'
"
" map <leader>p :ClearCtrlPCache<cr>:CtrlP<enter>
"
map <leader>p :FZF<enter>
" nmap ' :Buffers<enter>
let g:fzf_layout = { 'down': '~20%' }
let g:fzf_buffers_jump = 1
" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \                 <bang>0)
