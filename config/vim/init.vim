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
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
" <plugins>
call plug#begin('~/.config/vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'zivyangll/git-blame.vim'
call plug#end()

" git-blame
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" </plugins>

execute 'source ' . $HOME . '/.config/vim/statusline.vim'
