local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save file
vim.keymap.set('n', '<leader>s', '<cmd>w<CR>', opts)

-- Quit file
vim.keymap.set('n', '<C-q>', '<cmd>q<CR>', opts)

-- Create splits
vim.keymap.set('n', '<leader>vs', '<cmd>vsplit<CR>', opts)
vim.keymap.set('n', '<leader>sp', '<cmd>split<CR>', opts)

-- Navigate splits
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Buffers
vim.keymap.set('n', '<leader>to', '<cmd>enew<CR>', opts)
vim.keymap.set('n', '<leader>tx', '<cmd>bd<CR>', opts)
vim.keymap.set('n', '<leader>tl', '<cmd>bnext<CR>', opts)
vim.keymap.set('n', '<leader>th', '<cmd>bprevious<CR>', opts)

-- Escape easier
vim.keymap.set('i', 'jj', '<Esc>', opts)

-- Stop highlight
vim.keymap.set('n', '<Esc><Esc>', '<cmd>nohlsearch<CR>', opts)

-- For visible lines
vim.keymap.set('n', 'j', 'gj', opts)
vim.keymap.set('n', 'k', 'gk', opts)

