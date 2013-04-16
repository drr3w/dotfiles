"
" .gvimrc, macvim/gvim settings 
"

highlight Pmenu guibg=grey gui=bold " set the colors for the insertion pop-up   

set guifont=Consolas:h12
set guioptions -=r			" Remove the scrollbar!
set guioptions +=R			" but keep it if the window is vertically split
set guioptions -=T			" Remove the toolbar!
set antialias

colorscheme zenburn " I have disabled number line highlighting in the 
					" zenburn.vim file.


"  
" Only GUI specific settings go in this file, everything else goes in .vimrc
" so we source that here
"

source ~/.vimrc

