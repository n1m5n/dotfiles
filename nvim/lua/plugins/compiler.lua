return {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = function()
        require("code_runner").setup({
            filetype = {
                c = "cd $dir && gcc $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
            },
        })

        vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = true })
    end,
}
