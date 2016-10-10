"+++ General +++
set shell=bash
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
set backspace=indent,eol,start
set clipboard=unnamed
let $PATH = "/usr/local/bin".$PATH
:nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

let i = 1
while i <= 9
    execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile
function! WindowNumber()
    let str=tabpagewinnr(tabpagenr())
    return str
endfunction
set statusline=win:%{WindowNumber()}

