"+++ Markdown +++
let g:markdown_fenced_languages=['ruby', 'erb=eruby', 'javascript', 'html', 'sh', 'coffeescript', 'go']
autocmd FileType markdown map <leader>md :silent !open -a Marked\ 2.app '%:p'<cr>
" :nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<cr>
