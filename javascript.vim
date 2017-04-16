"+++ JavaScript/CoffeeScript +++
autocmd FileType js map <leader>js :!node %<enter>
autocmd FileType coffee map <leader>cs :!coffee %<enter>

autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufRead,BufNewFile *.fizz setfiletype anko
autocmd BufWritePre *.js Neoformat prettier

" au BufWrite *.js :Autoformat
au BufWrite *.json :Autoformat

let g:neomake_javascript_enabled_makers = ['eslint']

let g:jsx_ext_required = 0
au BufWrite *.jsx :Esformatter

