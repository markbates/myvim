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
" nmap nn :lnext<cr>
" nmap pp :lprevious<cr>

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
  autocmd filetype * map <leader>r :w<cr>:!tt<cr>
" endif
"
"
function! CloseAllBuffersButCurrent()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd" | endif
endfunction

nnoremap <leader>to :tabonly<cr>
nnoremap <leader>bo :call CloseAllBuffersButCurrent()<CR>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>
nnoremap <leader>ls :Buffers<cr>
nnoremap <leader>y :call system('nc localhost 8377', @0)<CR>
map <space> <Plug>(easymotion-prefix)
