"+++ Go +++
let $GO_ENV="test"
autocmd FileType go map <leader>a :AV<cr>
autocmd FileType go map <leader>go :w<CR>:!go run %<enter>
autocmd FileType go map <leader>r :w<CR>:!tt<enter>
autocmd FileType go map <leader>mm :!tt rr<enter>
autocmd FileType go map <leader>mt :TestFile<enter>
autocmd FileType go map <leader>mtl :TestNearest<enter>
autocmd FileType go map <leader>b :w<CR>:!./bench.sh<enter>
autocmd FileType go map <leader>l :w<CR>:!gometalinter ./...<enter>
autocmd FileType xml map <leader>l :w<CR>:silent %!xmllint --encode UTF-8 --format -<enter>
autocmd FileType go map <leader>v :w<CR>:GoVet<enter>

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>e <Plug>(go-rename)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_alternate_mode = "vsplit"

let $GOPATH = "/Users/markbates/Dropbox/development/gocode"
let g:go_bin_path = "/usr/local/bin"
let g:go_fmt_command = "goimports"
