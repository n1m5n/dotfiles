return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            watch_for_changes = true,
            keymaps = {
                ["-"] = { "actions.parent", mode = "n" },
            },
            view_options = {
                show_hidden = true,
            },
            win_options = {
                signcolumn = "yes",
            }
        })
        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
}
