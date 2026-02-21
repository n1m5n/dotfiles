return {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = function()
        require("code_runner").setup({
            filetype = {
                c = "cd $dir && gcc $fileName -std=c17 -Wall -o $fileNameWithoutExt.exe && $fileNameWithoutExt.exe",
                cpp = "cd $dir && g++ $fileName -std=c++17 -Wall -o $fileNameWithoutExt.exe && $fileNameWithoutExt.exe",
                python = "cd $dir && python $fileName",
            },
        })

        vim.keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = true })
    end,
}
