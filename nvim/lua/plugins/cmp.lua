local kind_icons = {
    Text          = "󰉿",
    Method        = "󰆧",
    Function      = "󰊕",
    Constructor   = "",
    Field         = "󰜢",
    Variable      = "󰀫",
    Class         = "󰠱",
    Interface     = "",
    Module        = "",
    Property      = "",
    Unit          = "",
    Value         = "λ",
    Enum          = "",
    Keyword       = "󰌋",
    Snippet       = "",
    Color         = "󰏘",
    File          = "󰈙",
    Reference     = "",
    Folder        = "󰉋",
    EnumMember    = "",
    Constant      = "󰏿",
    Struct        = "",
    Event         = "",
    Operator      = "󰆕",
    TypeParameter = "󰅲",
}

return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "path" },
                }),
                window = {
                    documentation = false
                },
                formatting = {
                    fields = { "kind", "abbr", "menu" },
                    format = function(entry, vim_item)
                        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                        vim_item.menu = ({
                            nvim_lsp = "LSP",
                            buffer = "Buffer",
                            path = "Path",
                        })[entry.source.name]
                        return vim_item
                    end,
                }
            })
        end,
    },
}

