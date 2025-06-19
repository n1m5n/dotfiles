return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "lewis6991/gitsigns.nvim",
        },
        init = function()
            local function update_barbar_visibility()
                local tab_count = #vim.api.nvim_list_tabpages()
                if tab_count >= 2 then
                    vim.o.showtabline = 2
                else
                    vim.o.showtabline = 0
                end
            end

            vim.api.nvim_create_autocmd({ "TabNew", "TabClosed", "TabEnter" }, {
                callback = update_barbar_visibility,
            })

            update_barbar_visibility()

            vim.api.nvim_create_autocmd("ColorScheme", {
                callback = function()
                    vim.cmd([[
                    highlight! link BufferCurrentMod BufferCurrent
                    highlight! link BufferVisibleMod BufferVisible
                    highlight! link BufferInactiveMod BufferInactive
                    ]])
                end,
            })

            vim.cmd([[
            highlight! link BufferCurrentMod BufferCurrent
            highlight! link BufferVisibleMod BufferVisible
            highlight! link BufferInactiveMod BufferInactive
            ]])
        end,
        opts = {
            animation = false,
            auto_hide = true,
            tabpages = true,
            clickable = true,
            icons = {
                buffer_index = false,
                buffer_number = false,
                filetype = {
                    enabled = true,
                },
            },
        },
    },
}

