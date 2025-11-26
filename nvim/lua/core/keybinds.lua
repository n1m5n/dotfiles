-- Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save File
vim.keymap.set('n', '<leader>s', '<cmd>w<cr>', opts)

-- Quit File
vim.keymap.set('n', '<C-q>', '<cmd>q<cr>', opts)

-- Navigate Splits
vim.keymap.set('n', '<C-k>', function() vim.cmd('wincmd k') end, opts)
vim.keymap.set('n', '<C-j>', function() vim.cmd('wincmd j') end, opts)
vim.keymap.set('n', '<C-h>', function() vim.cmd('wincmd h') end, opts)
vim.keymap.set('n', '<C-l>', function() vim.cmd('wincmd l') end, opts)

-- Tabs
vim.keymap.set('n', '<leader>to', ':enew<CR>', opts)
vim.keymap.set('n', '<leader>tx', ':bd<CR>', opts)
vim.keymap.set('n', '<leader>tl', ':bnext<CR>', opts)
vim.keymap.set('n', '<leader>th', ':bprevious<CR>', opts)

-- Escape easier
vim.keymap.set("i", "jj", "<Esc>", { noremap = false })

-- Highlight stop
vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })

