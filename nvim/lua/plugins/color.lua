return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "night",
            terminal_colors = true,
        })

        vim.cmd("colorscheme tokyonight")

        local border_color = "#7aa2f7"

        vim.api.nvim_set_hl(0, "TelescopeNormal",        { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal",  { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeBorder",        { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder",  { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopeSelection",       { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeSelectionCaret",  { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeMatching",        { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptPrefix",    { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptTitle",     { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsTitle",    { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewTitle",    { bg = "none" })
    end,
}

