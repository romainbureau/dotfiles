let mapleader="\<Space>"
set background=dark
set number
set vb
set encoding=utf-8
set mousehide
syntax on
set ruler
set cmdheight=1
set hid
set laststatus=2
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
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
:highlight ColorColumn guibg=#444444
filetype on
filetype plugin indent on
set incsearch
set hlsearch
set nofixendofline
set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.yaml,*.yml set filetype=yaml.ansible

call plug#begin('~/.config/nvim/plugins')
Plug 'https://github.com/tpope/vim-sensible.git'
Plug 'https://github.com/tpope/vim-vinegar.git'
Plug 'mhinz/vim-signify'
Plug 'w0rp/ale'
Plug 'https://github.com/fatih/vim-go'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'https://github.com/kshenoy/vim-signature.git'
Plug 'https://github.com/hashivim/vim-terraform.git'
Plug 'nathanielc/vim-tickscript'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-janah'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/seoul256.vim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
Plug 'posva/vim-vue'
Plug 'danishprakash/vim-yami'
call plug#end()
set termguicolors
let ayucolor="dark"
let g:seoul256_background = 233
colorscheme seoul256
colo seoul256
let g:vim_markdown_folding_disabled = 1
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
" Language server
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
set hidden
let g:LanguageClient_serverCommands = {
    \ 'sh': ['/usr/bin/bash-language-server', 'start'],
    \ 'python': ['/usr/bin/pyls'],
    \ 'yaml': ['/bin/yaml-language-server', '--stdio'],
    \ 'terraform': ['/usr/bin/terraform-lsp'],
    \ }

execute 'source ' . $HOME . '/.config/nvim/shortcuts.vim'
execute 'source ' . $HOME . '/.config/nvim/statusline.vim'
