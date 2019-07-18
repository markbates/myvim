" let g:ycm_add_preview_to_completeopt = 0
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Path to python interpreter for neovim
let g:python3_host_prog  = '/usr/local/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1

let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_refresh_delay = 1
let g:deoplete#min_pattern_length = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
call deoplete#custom#source('emoji', 'filetypes', [])
" filetype plugin on
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#source_importer = 0
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"
" " neocomplete like
" set completeopt+=noinsert
" " deoplete.nvim recommend
" set completeopt+=noselect
"
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#use_cache = 1
" let g:deoplete#sources#go#json_directory = $GOPATH.'/deoplete-cache'
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" autocmd CompleteDone * pclose!
"
