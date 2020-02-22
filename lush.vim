autocmd BufRead,BufNewFile *.lush setlocal filetype=lush
" autocmd BufNewFile,BufRead  *.lush :setfiletype lush

:command LushFmt !lush fmt -w %
:command LushRun !lush run %


au BufWritePost *.lush :silent :LushFmt
au BufWritePost *.lush :silent :e

au BufWritePost *.fizz :silent :LushFmt
au BufWritePost *.fizz :silent :e

