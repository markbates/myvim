"+++ NERDTree +++
map <leader>k :NERDTreeToggle<enter>
set grepprg=ag\ --nogroup\ --nocolor
let NERDTreeIgnore=['\~$', '^Godeps$']

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" call NERDTreeHighlightFile('go', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('sh', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('lush', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('sql', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('lush', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('Makefile', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('Dockerfile', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('.build', 'green', 'none', 'green', '#151515')

call NERDTreeHighlightFile('txt', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('mod', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('sum', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')

call NERDTreeHighlightFile('js', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('scss', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('svg', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('png', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('jpg', 'cyan', 'none', 'cyan', '#151515')
