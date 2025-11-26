-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Default
vim.opt.cursorline = false
vim.opt.fillchars = { eob = " " }
vim.opt.showmode = false
vim.opt.guicursor = ""

-- Tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Files
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.writebackup = false

-- Colors
vim.opt.termguicolors = true

-- Intro message
vim.opt.shortmess:append("I")
