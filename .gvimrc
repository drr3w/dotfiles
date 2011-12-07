"
" .gvimrc, macvim/gvim settings 
"

set guifont=Consolas:h12
set guioptions -=r			" Remove the scrollbar!
set guioptions +=R			" but keep it if the window is vertically split
set guioptions -=T			" Remove the toolbar!
set antialias

colorscheme biogoo			" I have disabled number line highlighting in the 
							" biogoo.vim file.


"  
" Only GUI specific settings go in this file, everything else goes in .vimrc
" so we source that here
"

source ~/.vimrc

