autocmd BufRead,BufNewFile *.peg setlocal filetype=peg

au BufWrite *.peg :make gen
