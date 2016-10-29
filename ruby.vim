"+++ Ruby +++
" autocmd FileType ruby map <leader>a :vsp<cr>:!alt_file %<cr><cr>:A<cr>
autocmd FileType ruby map <leader>a :AV<cr>
autocmd FileType ruby map <leader>rs :!$GEM_HOME/bin/bundle exec rspec %<enter>
autocmd FileType ruby map <leader>rb :!ruby -Ilib -Itest -Ispec %<enter>
autocmd FileType ruby map <leader>rc :!rubocop -a %<enter>
autocmd FileType ruby map <leader>mt :!tt ruby %<enter>
autocmd FileType ruby map <leader>mm :!tt rr<enter>
autocmd FileType ruby map <leader>mtl :!tt ruby %:<C-r>=line('.')<CR><CR>
au BufWrite *.rb :Autoformat
" autocmd BufWrite *.rb :Rubocop -a
" au BufWrite *.rb :!rubocop\ -a\ -s\ -o\ \/tmp\/rcop %<enter>
" au BufWrite *.rb :.,$!rubocop -a %<cr>
