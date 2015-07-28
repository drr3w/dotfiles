set nocompatible

syntax enable	  " Turn on syntax highlighting
set bs=eol,start,indent


colorscheme codeschool
				

"
" Some nice keyboard shortcuts
"
nmap <silent> <C-h> :nohlsearch <CR>
nmap <silent> <D-Up> :wincmd k<CR>
nmap <silent> <D-Down> :wincmd j<CR>
nmap <silent> <D-Left> :wincmd h<CR>
nmap <silent> <D-Right> :wincmd l<CR>
nmap <silent> <C-T> :TagbarToggle<CR>
nmap <silent> <C-N> :NERDTreeToggle<CR>

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

set wildmode=list:full

