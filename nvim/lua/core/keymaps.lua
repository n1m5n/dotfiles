local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save/quit file
keymap('n', '<C-s>', '<cmd>w<CR>', opts)
keymap('n', '<C-q>', '<cmd>q<CR>', opts)
keymap('n', '<C-x>', '<cmd>x<CR>', opts)

-- Create splits
keymap('n', '<leader>vs', '<cmd>vsplit<CR>', opts)
keymap('n', '<leader>sp', '<cmd>split<CR>', opts)

-- Navigate splits
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Buffers
keymap('n', '<leader>to', '<cmd>enew<CR>', opts)
keymap('n', '<leader>tx', '<cmd>bd<CR>', opts)

-- Resize buffer with arrows
keymap("n", "<C-Up>", ":resize -1<CR>", opts)
keymap("n", "<C-Down>", ":resize +1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -1<CR>", opts)

-- Create Terminal
keymap("n", "<leader>nt", ":vsplit | terminal pwsh<CR>i", opts)

-- Terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", opts)

-- Terminal exit
keymap("t", "<C-q>", function()
    vim.cmd("stopinsert")
    if #vim.api.nvim_tabpage_list_wins(0) > 1 then
        vim.cmd("close")
    else
        vim.cmd("qa")
    end
end, opts)

-- Escape easier
keymap('i', 'jj', '<Esc>', opts)

-- Stop highlight
keymap('n', '<Esc><Esc>', '<cmd>nohlsearch<CR>', opts)

-- For visible lines
keymap('n', 'j', 'gj', opts)
keymap('n', 'k', 'gk', opts)

