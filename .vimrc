filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set nocompatible
set clipboard=unnamed " set clipboard to system clipboard
syntax enable	  " Turn on syntax highlighting
set bs=eol,start,indent

let mapleader=","

colorscheme codeschool

"
" Some nice keyboard shortcuts
"
nmap <silent> <C-h> :nohlsearch <CR>
nmap <silent> <C-T> :TagbarToggle<CR>
nmap <silent> <C-N> :NERDTreeToggle<CR>

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

set showmatch
set matchtime=3

set tabstop=4       " set tabs to be 4 spaces long
set shiftwidth=4    " this uses 4 spaces for a tab
set expandtab       " always use spaces to indent
set laststatus=2    " Always show status line

set ch=2 	        " This sets the command height to 2 rows
set history=50      " Command history length
set ruler	        " Always show the cursor
set showcmd	        " display incomplete commands
set incsearch  	    " search incrementally
set hlsearch	    " highlight search
set ignorecase	    " ignore case during searches
set smartindent
set nowrap	        " Turn off long line wrapping
set nowrapscan      " Dont wrap when searching
set showmode        " Always show which mode we're in
set number          " show line numbers
set relativenumber  " use relative line numbers
set cursorline      " highlight the line the cursor is currently on

set wildmode=list:full

set textwidth=120 " sets word wrap at 120 char

set nolist " turn off displaying certain hidden characters