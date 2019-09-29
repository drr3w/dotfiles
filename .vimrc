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
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-commentary'
Plugin 'townk/vim-autoclose'
Plugin 'fatih/vim-go'
call vundle#end()            " required

"----------------------------------------------------------------------------------------------------------------------
" Ctrl-P fuzzy path finder 
"----------------------------------------------------------------------------------------------------------------------

set runtimepath^=~/.vim/bundle/ctrlp.vim

"----------------------------------------------------------------------------------------------------------------------
" Abbreviations 
"----------------------------------------------------------------------------------------------------------------------

abbr teh the
abbr het the  
abbr hte the
abbr emmg etch.himself@gmail.com
iab <expr> ddate strftime("[%a, %b %d]")


"----------------------------------------------------------------------------------------------------------------------
" Statusline  setting
"----------------------------------------------------------------------------------------------------------------------

set statusline=[%F]                               " filename
" set statusline+=%{fugitive#statusline()} 
set statusline+=%=%-14.(%l,%c%V%)\ %p%% 

"----------------------------------------------------------------------------------------------------------------------
" Tagbar settings
"----------------------------------------------------------------------------------------------------------------------

let g:tagbar_sort       = 0     " sort tags by where they appear in teh file
let g:tagbar_autofocus  = 1     " automatically move cursor into the tagbar when it activates
let g:tagbar_left       = 0     " tagbar opens on the right
let g:tagbar_width      = 40    " tagbar is 40 characters wide

"----------------------------------------------------------------------------------------------------------------------
" NERDTree settings
"----------------------------------------------------------------------------------------------------------------------

let g:NERDTreeWinSize   = 60

"----------------------------------------------------------------------------------------------------------------------
" Vim specific stuff
"----------------------------------------------------------------------------------------------------------------------

filetype plugin indent on    " required, turns on loading filetype specific plugin and indent files

set nocompatible             " make vim less vi-compatible and more useful
set clipboard=unnamed        " set clipboard to system clipboard
syntax enable	             " Turn on syntax highlighting
set bs=eol,start,indent      " controlling how backspace behaves. see :help bs

"----------------------------------------------------------------------------------------------------------------------
" Some nice keyboard shortcuts
"----------------------------------------------------------------------------------------------------------------------

nmap <silent> <C-h> :nohlsearch <CR>
nmap <silent> <C-T> :TagbarToggle<CR>
nmap <silent> <C-N> :NERDTreeToggle<CR>
nmap <silent> <C-L> :call ColorColumnToggle()<CR>
nmap <silent> <C-Y> :call LineNumberToggle()<CR>
nmap <silent> <C-I> :IndentLinesToggle<CR>
" this below remaps code folds to <space>
nnoremap <space> za  

"----------------------------------------------------------------------------------------------------------------------
" Autocommands
"----------------------------------------------------------------------------------------------------------------------

" PEP-008: This colors lines over 120 characters long, python files only.
augroup vimrc_autocmds
  autocmd BufEnter *.py highlight OverLength ctermbg=124 ctermfg=266 guibg=#111111
  autocmd BufEnter *.py match OverLength /\%120v.*/
augroup END

"----------------------------------------------------------------------------------------------------------------------
" Settings
"----------------------------------------------------------------------------------------------------------------------
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

highlight ColorColumn ctermbg=124

set fileformat=unix

set showmatch           " show matching brackets
set matchtime=3

set tabstop=4           " set tabs to be 4 spaces long
set shiftwidth=4        " this uses 4 spaces for a tab
set expandtab           " always use spaces to indent
set laststatus=2        " Always show status line
set foldlevel=99        " set all folds unfolded by default
set ch=2                " This sets the command height to 2 rows
set history=50          " Command history length
set ruler               " Always show the cursor position in the statusbar
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
"set relativenumber      " use relative line numbers
set cursorline          " highlight the line the cursor is currently on
set foldmethod=indent   " code fold based on indentation 
set wildmode=list:full

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
