return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local builtin = require('telescope.builtin')

        require('telescope').setup({
            pickers = {
                find_files = { hidden = true },
                live_grep = {
                    additional_args = function()
                        return { "--hidden" }
                    end,
                },
            },
        })

        vim.keymap.set('n', '<leader>ff', builtin.find_files)
        vim.keymap.set('n', '<leader>fg', builtin.live_grep)
        vim.keymap.set('n', '<leader>fb', builtin.buffers)

        -- If nvim started in non home dir
        vim.keymap.set('n', '<leader>fr', function()
            builtin.find_files({ cwd = vim.fn.expand("~"), hidden = true, no_ignore = false })
        end)
    end
}

