return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
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
        { "<leader>ff", "<cmd>Telescope find_files<cr>" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>" },
        {
            "<leader>fr",
            function()
                require("telescope.builtin").find_files({
                    cwd = vim.fn.expand("~"),
                })
            end,
        },
    },
}

