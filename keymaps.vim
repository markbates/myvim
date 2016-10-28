"+++ Keymaps +++
map! jj <esc>
nmap oo o<esc>k
nmap OO O<esc>j
map // :TComment<cr>
nmap /" cs'"
nmap /' cs"'
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv
nmap <C-h> gT
nmap <C-l> gt

" open files in a new tab
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf

" move vertically by visual line
" nnoremap j gj
" nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" if exists('$TMUX')
"   autocmd filetype * map <leader>r :w<cr>:VimuxRunCommand("clear; tt")<enter>
" else
  autocmd filetype * map <leader>r :w<cr>:!tt<enter>
" endif
