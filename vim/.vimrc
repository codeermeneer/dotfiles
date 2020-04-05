set history=500

filetype plugin on
filetype indent on

set autoread
au FocusGained,BufEnter * checktime

set so=7

set number
set ruler

set cmdheight=1

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" colors
syntax enable
set background=dark

" indentation
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500

set ai
set si
set wrap

set mouse=a

" plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'w0rp/ale'
Plug 'yggdroot/indentline'

call plug#end()

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" NERDtree
map <C-n> :NERDTreeToggle<CR>

let g:indentLine_char = '|'
set list lcs=tab:\|\ 

"set runtimepath+=~/.vim_runtime
"source ~/.vim_runtime/vimrcs/basic.vim
"source ~/.vim_runtime/vimrcs/filetypes.vim
"source ~/.vim_runtime/vimrcs/plugins_config.vim
"source ~/.vim_runtime/vimrcs/extended.vim

try
"source ~/.vim_runtime/my_configs.vim
catch
endtry
