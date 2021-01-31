let mapleader="\<Space>"
set background=dark
set number
set vb
set encoding=utf-8
set mouse=a
syntax on
set ruler
set cmdheight=1
set hid
set laststatus=2
set showmode
set showcmd
set showmatch
set showbreak=<
set autoread
set ignorecase
set shiftwidth=4
set smarttab
set expandtab
set cursorline
set softtabstop=4
set tabstop=4
set autoindent
set smartindent
set nobackup
set nowb
set noswapfile
set colorcolumn=80
set clipboard=unnamedplus
set diffopt+=vertical
set completeopt=menuone,noinsert,noselect
set incsearch
set hlsearch
set nofixendofline
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
let g:netrw_banner=0 " disable banner in netrw
let g:netrw_liststyle=3 " tree view in netrw

" <plugins>
call plug#begin('~/.config/nvim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'zivyangll/git-blame.vim'
call plug#end()

" git-blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" fzf
nnoremap <Leader>p :Files<CR>
" </plugins>

colorscheme codedark
execute 'source ' . $HOME . '/.config/nvim/statusline.vim'
