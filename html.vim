"+++ HTML +++
au BufWrite *.html.erb :Autoformat
au BufReadPost *.html set filetype=html.eruby
au BufReadPost *.plush set filetype=html.eruby
au BufReadPost *.md set filetype=markdown.eruby
au BufReadPost *.toml set filetype=toml.markdown.eruby
let g:mustache_abbreviations = 1
