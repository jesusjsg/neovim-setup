local opt = vim.opt

-- encode
vim.scriptencoding = "utf-8"

--leader key
vim.g.mapleader = " "

-- better ui
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.showmode = false
opt.termguicolors = true

-- allow config system
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- search
opt.incsearch = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.ttyfast = true
opt.showmatch = true

-- tab
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
