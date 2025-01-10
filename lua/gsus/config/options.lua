local opt = vim.opt

--leader key
vim.g.mapleader = " "

-- better ui
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.showmode = false

-- allow config system
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.completeopt = { "menu", "menuone", "noselect"}

-- search
opt.incsearch = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true

