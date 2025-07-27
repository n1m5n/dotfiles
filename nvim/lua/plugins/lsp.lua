return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = { auto_install = true },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "cssls", "html", "jdtls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = vim.tbl_deep_extend(
                "force", {},
                vim.lsp.protocol.make_client_capabilities(),
                require("cmp_nvim_lsp").default_capabilities()
            )

            vim.diagnostic.config({
                virtual_text = true
            })

            local lspconfig = require("lspconfig")
            for _, lsp in ipairs({ "lua_ls", "pyright", "cssls", "html", "jdtls" }) do
                lspconfig[lsp].setup({ capabilities = capabilities })
            end
        end,
    },
}

