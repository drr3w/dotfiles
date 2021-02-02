"----------------------------------------------------------------------------------------------------------------------
" File:   $HOME/.vimrc
" Author: Andrew Hersh <etch.himself@gmail.com>
"----------------------------------------------------------------------------------------------------------------------

filetype off                  " required

"----------------------------------------------------------------------------------------------------------------------
" vim-plug  plugin manager
"----------------------------------------------------------------------------------------------------------------------

" Automatically, silently, install vim-plug if we dont have it. 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()            " required

"----------------------------------------------------------------------------------------------------------------------
" Syntastic settings
"----------------------------------------------------------------------------------------------------------------------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"----------------------------------------------------------------------------------------------------------------------
" Ctrl-P fuzzy path finder 
"----------------------------------------------------------------------------------------------------------------------

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
set runtimepath^=~/.vim/bundle/ctrlp.vim


"----------------------------------------------------------------------------------------------------------------------
" Abbreviations 
"----------------------------------------------------------------------------------------------------------------------

abbr teh the
abbr het the  
abbr hte the
abbr emmg etch.himself@gmail.com
iab <expr> ddate strftime("## %a, %b %d")


"----------------------------------------------------------------------------------------------------------------------
" Statusline  setting
"----------------------------------------------------------------------------------------------------------------------

set statusline=[%F]                               " filename
set statusline+=%{fugitive#statusline()} 
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
let NERDTreeMinimalUI = 1

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

let mapleader=","

nmap <silent> <C-h> :nohlsearch <CR>
nmap <silent> <C-T> :TagbarToggle<CR>
nmap <silent> <C-N> :NERDTreeToggle<CR>
nmap <silent> <C-L> :call ColorColumnToggle()<CR>
nmap <silent> <C-Y> :call LineNumberToggle()<CR>
nmap <silent> <leader>gd :YcmCompleter GoTo<CR>  
nmap <silent> <leader>gr :YcmCompleter GoToReferences<CR>  
nmap <silent> <leader>Gc :Git commit<CR>
nmap <silent> <leader>Ga :Git add %<CR>
nmap <silent> <leader>I :%!python -m json.tool<CR>
nmap <silent> <leader>[ :vertical resize -15<CR>
nmap <silent> <leader>] :vertical resize +15<CR>
nmap <silent> <leader>r :GoRun <CR>
nmap <silent> <leader>b :GoBuild <CR>
"----------------------------------------------------------------------------------------------------------------------
" Autocommands
"----------------------------------------------------------------------------------------------------------------------

" PEP-008: This colors lines over 120 characters long, python files only.
" augroup vimrc_autocmds
"   autocmd BufEnter *.py match OverLength /\%120v.*/
" augroup END

"----------------------------------------------------------------------------------------------------------------------
" Settings
"----------------------------------------------------------------------------------------------------------------------
let g:solarized_termcolors=256
let g:spacegray_low_contrast=1
colorscheme distinguished
set background=dark

highlight ColorColumn ctermbg=235

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
        setlocal cc=80
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
