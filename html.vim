"+++ HTML +++
au BufWrite *.html.erb :Autoformat
au BufReadPost *.html set syntax=mustache
let g:mustache_abbreviations = 1
