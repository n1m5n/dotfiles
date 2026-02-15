return {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("vague").setup({
            transparent = true,
            italic = false
        })

        vim.cmd("colorscheme vague")

        -- Telescope transparency
        local border_color = "#6E94B2"

        vim.api.nvim_set_hl(0, "TelescopeNormal",         { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal",  { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeBorder",        { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder",  { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none", fg = border_color })
        vim.api.nvim_set_hl(0, "TelescopeSelection",      { bg = "none" })
        vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { bg = "none", fg = "#CDCDCD" })
        vim.api.nvim_set_hl(0, "TelescopeMatching",       { fg = "#F3BE7C", bold = true })
        vim.api.nvim_set_hl(0, "TelescopePromptPrefix",   { fg = "#6E94B2" })
        vim.api.nvim_set_hl(0, "TelescopePromptTitle",    { fg = "#CDCDCD" })
        vim.api.nvim_set_hl(0, "TelescopeResultsTitle",   { fg = "#CDCDCD" })
        vim.api.nvim_set_hl(0, "TelescopePreviewTitle",   { fg = "#CDCDCD" })
    end,
}

