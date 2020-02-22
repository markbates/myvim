"+++ Markdown +++
let g:markdown_fenced_languages=['ruby', 'erb=eruby', 'javascript', 'html', 'sh', 'coffeescript', 'go', 'plush=eruby']
autocmd FileType markdown map <leader>md :silent !open -a Marked\ 2.app '%:p'<cr>
" :nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<cr>
let g:table_mode_corner='|'

" autocmd BufNewFile,BufRead  *.md :silent :TableModeEnable
autocmd BufNewFile,BufRead  *.md :silent :setlocal spell spelllang=en_us

set linebreak
