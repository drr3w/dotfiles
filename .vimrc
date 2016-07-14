"----------------------------------------------------------------------------------------------------------------------
" File:   $HOME/.vimrc
" Author: Andrew Hersh <etch.himself@gmail.com>
"----------------------------------------------------------------------------------------------------------------------

filetype off                  " required

"----------------------------------------------------------------------------------------------------------------------
" Vundle plugin manager
"----------------------------------------------------------------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'      " let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

set nocompatible
set clipboard=unnamed        " set clipboard to system clipboard
syntax enable	             " Turn on syntax highlighting
set bs=eol,start,indent

"----------------------------------------------------------------------------------------------------------------------
" Some nice keyboard shortcuts
"----------------------------------------------------------------------------------------------------------------------

nmap <silent> <C-h> :nohlsearch <CR>
nmap <silent> <C-T> :TagbarToggle<CR>
nmap <silent> <C-N> :NERDTreeToggle<CR>
nmap <silent> <C-L> :call ColorColumnCToggle()<CR>
nmap <silent> <C-Y> :call LineNumberToggle()<CR>
" this remaps code folds to <space>
nnoremap <space> za  

"----------------------------------------------------------------------------------------------------------------------
" Autocommands
"----------------------------------------------------------------------------------------------------------------------

" PEP-008: This colors lines over 80 characters long, python files only.
augroup vimrc_autocmds
  autocmd BufEnter *.py highlight OverLength ctermbg=124 ctermfg=266 guibg=#111111
  autocmd BufEnter *.py match OverLength /\%80v.*/
augroup END

"----------------------------------------------------------------------------------------------------------------------
" Settings
"----------------------------------------------------------------------------------------------------------------------

colorscheme codeschool

set fileformat=unix

set showmatch
set matchtime=3

set tabstop=4           " set tabs to be 4 spaces long
set shiftwidth=4        " this uses 4 spaces for a tab
set expandtab           " always use spaces to indent
set laststatus=2        " Always show status line
set foldlevel=99        " set all folds unfolded by default
set ch=2                " This sets the command height to 2 rows
set history=50          " Command history length
set ruler               " Always show the cursor
set showcmd             " display incomplete commands
set incsearch           " search incrementally
set hlsearch            " highlight search
set ignorecase          " ignore case during searches
set autoindent          " 
set smartindent         "  
set nowrap	            " Turn off long line wrapping
set nowrapscan          " Dont wrap when searching
set showmode            " Always show which mode we're in
set number              " show line numbers
set relativenumber      " use relative line numbers
set cursorline          " highlight the line the cursor is currently on
set foldmethod=indent   " code fold based on indentation 
set wildmode=list:full

set textwidth=79        " sets word wrap at 80 char

set nolist              " turn off displaying certain hidden characters

"----------------------------------------------------------------------------------------------------------------------
" User defined functions
"----------------------------------------------------------------------------------------------------------------------

function! ColorColumnToggle()
    if &cc
        setlocal cc=0
    else
        setlocal cc=120
    endif
endfunction

function! LineNumberToggle()
    if &relativenumber
        setlocal norelativenumber
        setlocal nonumber 
    else
        setlocal relativenumber
        setlocal number
    endif
endfunction
