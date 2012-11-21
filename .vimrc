set nocompatible

syntax enable	  " Turn on syntax highlighting
set bs=eol,start,indent

set shiftwidth=4 " this uses 4 spaces for a tab
set expandtab    " always use spaces to indent
set laststatus=2 " Always show status line

set ch=2 	  " This sets the command height to 2 rows
set history=50    " Command history length
set ruler	  " Always show the cursor
set showcmd	  " display incomplete commands
set incsearch  	  " search incrementally
set hlsearch	  " highlight search
set ignorecase	  " ignore case during searches
set smartindent
set nowrap	  " Turn off long line wrapping
set nowrapscan " Dont wrap when searching
set showmode  " Always show which mode we're in
set number

set wildmode=list:full

filetype indent plugin on