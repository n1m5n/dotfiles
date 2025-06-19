return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = false,
                ensure_installed = {
                    "lua",
                    "python",
                    "html",
                    "css",
                    "javascript",
                    "java",
                },
                highlight = { enable = true },
                indent = { enable = false },
            })
        end
    }
}
