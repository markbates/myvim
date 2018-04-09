source $HOME/.config/nvim/colors/molokai.vim

"+++ Display Settings +++
set t_Co=256
set guifont=Hack:h18
colorscheme molokai
set listchars=tab:\.\ ,trail:·
set list
set number
set showcmd
set showmode
set splitright
set splitbelow
set showmatch
hi MatchParen cterm=none ctermbg=green ctermfg=blue
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set lazyredraw          " redraw only when we need to.

"+++ Lines & Columns +++
set cursorline
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent
set smartindent

hi def Dim cterm=none ctermbg=none ctermfg=242

function! s:DimInactiveWindow()
    syntax region Dim start='' end='$$$end$$$'
endfunction

function! s:UndimActiveWindow()
    ownsyntax
endfunction

autocmd WinEnter * call s:UndimActiveWindow()
autocmd BufEnter * call s:UndimActiveWindow()
autocmd WinLeave * call s:DimInactiveWindow()
