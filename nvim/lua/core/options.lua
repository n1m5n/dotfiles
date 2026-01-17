-- Line nums
vim.opt.number = true
vim.opt.relativenumber = true

-- Cursor
vim.opt.cursorline = true
vim.opt.showmode = false

-- Wrap
vim.opt.wrap = false

-- Tabs and indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Files
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.writebackup = false

-- Colors
vim.opt.termguicolors = true

-- Intro message (keep nothing)
vim.opt.shortmess:append("I")

if vim.g.neovide then
    vim.g.neovide_fullscreen = true
end
