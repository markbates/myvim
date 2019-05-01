" +++ Plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-titlecase'
"
" Plug 'nsf/gocode'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Plug 'sebdah/vim-delve'
Plug 'benmills/vim-golang-alternate'
"
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
" " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" " Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'
Plug 'Raimondi/delimitMate'
" Plug 'mustache/vim-mustache-handlebars'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
"
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'edkolev/tmuxline.vim'
"
 Plug 'Chiel92/vim-autoformat'
 Plug 'millermedeiros/vim-esformatter'
"
Plug 'pangloss/vim-javascript'
" " Plug 'kchmck/vim-coffee-script'
" Plug 'mxw/vim-jsx'
" Plug 'posva/vim-vue'
"
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" " Plug 'tpope/vim-markdown'
"
" Plug 'tpope/vim-rails'
" Plug 'vim-ruby/vim-ruby'
" Plug 'ngmy/vim-rubocop'
"
Plug 'kana/vim-textobj-user'
Plug 'https://github.com/whatyouhide/vim-textobj-erb'
"
Plug 'tpope/vim-surround'
Plug 'janko-m/vim-test'
"
" Plug 'mdempsky/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh', 'branch': 'cache'}
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
"
Plug 'sbdchd/neoformat'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer' }
" Plug 'Valloric/YouCompleteMe'
" " Plug 'benmills/vimux'
" "
" " Plug 'tpope/vim-rsi'
Plug 'mklabs/split-term.vim'
" " Plug 'floobits/floobits-neovim'
" Plug 'wfleming/vim-codeclimate'
Plug 'stefandtw/quickfix-reflector.vim'
" Plug 'jremmen/vim-ripgrep'
Plug 'Lokaltog/vim-easymotion'
Plug 'skwp/vim-html-escape'
"
Plug 'tpope/vim-dispatch'
Plug 'radenling/vim-dispatch-neovim'
"
Plug 'machakann/vim-highlightedyank'
Plug 'kien/rainbow_parentheses.vim'
"
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'tpope/vim-dadbod'

Plug 'gf3/peg.vim'
" Plug 'cespare/vim-toml'
" Plug 'godoctor/godoctor.vim', { 'do': ':GoDoctorInstall'}
" " Plug 'blueyed/vim-diminactive'
call plug#end()
