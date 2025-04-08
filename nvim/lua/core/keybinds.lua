-- Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save File
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Quit File
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- Navigate Splits
vim.keymap.set('n', '<C-k>', function() vim.cmd('wincmd k') end, opts)
vim.keymap.set('n', '<C-j>', function() vim.cmd('wincmd j') end, opts)
vim.keymap.set('n', '<C-h>', function() vim.cmd('wincmd h') end, opts)
vim.keymap.set('n', '<C-l>', function() vim.cmd('wincmd l') end, opts)

-- Tabs
vim.keymap.set('n', '<leader>to', function() vim.cmd('tabnew') end, opts)   
vim.keymap.set('n', '<leader>tx', function() vim.cmd('tabclose') end, opts)
vim.keymap.set('n', '<leader>tl', function() vim.cmd('tabn') end, opts)
vim.keymap.set('n', '<leader>th', function() vim.cmd('tabp') end, opts)

-- Escape easier
vim.keymap.set("i", "jj", "<Esc>", { noremap = false })
