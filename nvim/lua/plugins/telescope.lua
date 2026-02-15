return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        'nvim-telescope/telescope-fzf-native.nvim',
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        defaults = {
            sorting_strategy = "ascending",
            layout_config = {
                prompt_position = "top",
            },
        },

        pickers = {
            find_files = {
                find_command = {
                    "fd",
                    "--type", "f",
                    "--hidden",
                    "--no-ignore",
                    "--follow",
                },
            },
        },
    },

    keys = {
        { "<leader>fb", "<cmd>Telescope buffers<cr>" },
        { "<leader>ff", "<cmd>Telescope find_files<cr>" },
        {
            "<leader>fr",
            function()
                require("telescope.builtin").find_files({
                    cwd = vim.fn.expand("~"),
                })
            end,
        },
        {
            "<leader>fg",
            function()
                require("telescope.builtin").live_grep({
                    cwd = vim.fn.expand("~"),
                })
            end,
        }
    },
}

