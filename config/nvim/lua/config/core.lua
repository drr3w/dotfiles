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
vim.g.signcolumn = false
vim.opt.termguicolors = true
vim.g.python3_host_prog = "$HOME . 'code/.virtualenvs/dev-3/bin/python'"
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

