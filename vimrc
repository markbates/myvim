"+++ General +++
let mapleader=","
set noswapfile
autocmd BufWritePre * :%s/\s\+$//e "strip trailing white space
set nrformats=hex
set nocompatible
syntax on
filetype plugin indent on
set noerrorbells
set nobackup
set encoding=utf-8
set autowrite
set autoread
set laststatus=2

"+++ Display Settings +++
set t_Co=256
set guifont=Monaco:h18
colorscheme molokai
set listchars=tab:\.\ ,trail:·
set list
set number
set showcmd
set showmode
set splitright
set splitbelow
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase


"+++ Lines & Columns +++
set cursorline
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set smartindent

"+++ Pathogen +++
execute pathogen#infect()

"+++ Spelling +++
set spelllang=en_us
autocmd BufRead,BufNewFile *.md setlocal spell

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

"+++ Search +++
map <leader>k :NERDTreeToggle<enter>
set grepprg=ag\ --nogroup\ --nocolor

"+++ CtrlP +++
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_max_height = 10
let g:ctrlp_mruf_max = 250
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|build)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }

func! MyPrtMappings()
  let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': ['<c-t>'],
  \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
  \ }
endfunc

func! MyCtrlPTag()
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
\ 'AcceptSelection("t")': ['<c-t>'],
\ }
CtrlPBufTag
endfunc

let g:ctrlp_buffer_func = { 'exit': 'MyPrtMappings' }
com! MyCtrlPTag call MyCtrlPTag()

let g:ctrlp_buftag_types = {
\ 'go'         : '--language-force=go --golang-types=ftv',
\ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
\ 'markdown'   : '--language-force=markdown --markdown-types=hik',
\ 'objc'       : '--language-force=objc --objc-types=mpci',
\ 'rc'         : '--language-force=rust --rust-types=fTm'
\ }
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_by_filename = 1
let g:ctrlp_match_window = 'top,order:ttb'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
let g:ctrlp_open_new_file = 'et'

map <leader>p :ClearCtrlPCache<cr>:CtrlP<enter>


"+++ Unite +++
let g:unite_source_history_yank_enable = 1
map <leader>y :<C-u>Unite history/yank<cr>

"+++ UltiSnips +++
let g:UltiSnipsExpandTrigger="<c-]>"
let g:UltiSnipsEditSplit="vertical"

" +++ vim-airline +++
" let g:airline#extensions#tabline#enabled = 1

" +++ omni-completion +++
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"+++ Go +++
autocmd FileType go map <leader>go :w<CR>:!gode run %<enter>
autocmd FileType go map <leader>gom :w<CR>:!gode run main.go<enter>
autocmd FileType go map <leader>r :w<CR>:!GO_ENV=test gode test ./...<enter>
autocmd FileType go map <leader>l :w<CR>:GoLint<enter>
autocmd FileType go map <leader>v :w<CR>:GoVet<enter>
let g:go_fmt_command = "goimports"
" autocmd BufWritePost *.go silent :!goimports -w %

"+++ git +++
map <leader>gst :!git status<enter>
map <leader>ga :!git add -A .<enter>
map <leader>gp :!git push<enter>
map <leader>gca :!git commit -a -v<enter>
map <leader>gcb :!git checkout -bv<enter>

"+++ Ruby +++
autocmd FileType ruby map <leader>a :vsp<cr>:!alt_file %<cr><cr>:A<cr>
autocmd FileType ruby map <leader>rs :!bundle exec rspec %<enter>
autocmd FileType ruby map <leader>rb :!ruby -Ilib -Itest -Ispec %<enter>
autocmd FileType ruby map <leader>r :!bundle exec rake<enter>
autocmd FileType ruby map <leader>mt :!mt %<enter>
autocmd FileType ruby map <leader>mm :!mt --last<enter>
autocmd FileType ruby map <leader>mtl :!mt %:<C-r>=line('.')<enter><enter>
" autocmd FileType ruby let g:ycm_auto_trigger = 0

"+++ JavaScript/CoffeeScript +++
autocmd FileType js map <leader>js :!node %<enter>
autocmd FileType coffee map <leader>cs :!coffee %<enter>

"+++ Markdown +++
let g:markdown_fenced_languages=['ruby', 'erb=eruby', 'javascript', 'html', 'sh', 'coffeescript', 'go']
autocmd FileType markdown map <leader>md :!mark %<enter><enter>

"+++ Closetag +++
autocmd FileType html,eruby,erb,tmpl let b:closetag_html_style=1
