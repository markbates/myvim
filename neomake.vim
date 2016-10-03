autocmd! BufReadPost,BufWritePost,BufEnter * Neomake
" let g:neomake_serialize = 1
" let g:neomake_serialize_abort_on_error = 1
let g:neomake_go_enabled_makers = ['go', 'govet']

let g:python3_host_prog = '/usr/local/bin/python3'
