local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', '<C-s>', '<cmd>w<CR>', opts)
keymap('n', '<C-q>', '<cmd>q!<CR>', opts)
keymap('n', '<C-x>', '<cmd>x<CR>', opts)

keymap('i', 'jj', '<Esc>', opts)

keymap('n', 'j', 'gj', opts)
keymap('n', 'k', 'gk', opts)

keymap('n', '<leader>vs', '<cmd>vsplit<CR>', opts)
keymap('n', '<leader>sp', '<cmd>split<CR>', opts)

keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

keymap('n', '<leader>to', '<cmd>enew<CR>', opts)
keymap('n', '<leader>tx', '<cmd>bd<CR>', opts)

keymap("n", "<C-Up>", ":resize -1<CR>", opts)
keymap("n", "<C-Down>", ":resize +1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -1<CR>", opts)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap({ "n", "v" }, "Y", [["+y]])

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap("n", "<leader>nt", ":vsplit | terminal pwsh<CR>i", opts)

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

