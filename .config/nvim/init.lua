-------------------------------
-- Imports
-------------------------------
require("etch.remap") -- corresponds to ~/.config/nvim/lua/hersh4/remap.lua
require("etch.packer") -- corresponds to ~/.config/nvim/lua/hersh4/packer.lua

---------------------------------
-- colorscheme config 
---------------------------------
vim.opt.termguicolors = true
vim.cmd('colorscheme melange')
vim.o.background = "dark"
vim.g.edge_style = 'aura' 
vim.g.edge_dim_foreground = 1

-------------------------------
-- General opts
-------------------------------
vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showmatch = true
vim.opt.matchtime = 3
vim.opt.incsearch = true
vim.opt.hlsearch  = false
vim.opt.ignorecase = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.ch = 2
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.g.signcolumn = off
vim.opt.termguicolors = true
