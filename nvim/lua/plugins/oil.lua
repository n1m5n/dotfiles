return {
    "stevearc/oil.nvim",
    opts = {
        default_file_explorer = true,
        use_default_keymaps = true,
        view_options = {
            show_hidden = true,
        },
    },
    keys = {
        {
            "<leader>tt",
            function()
                require("oil").open()
            end,
        },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}

