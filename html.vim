"+++ HTML +++
au BufWrite *.html.erb :Autoformat
au BufReadPost *.html set filetype=html.eruby
au BufReadPost *.md set filetype=markdown.eruby
let g:mustache_abbreviations = 1
