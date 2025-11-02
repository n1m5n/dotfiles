return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })

            local on_attach = function(_, bufnr)
                local opts = { noremap = true, silent = true, buffer = bufnr }
                local keymap = vim.keymap.set
                keymap("n", "<leader>gd", vim.lsp.buf.definition, opts)
                keymap("n", "<leader>gr", vim.lsp.buf.references, opts)
            end

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
            if ok then
                capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
            end

            local servers = {
                pyright = {},
                clangd = {},
                lua_ls = {},
            }

            for name, config in pairs(servers) do
                config.on_attach = on_attach
                config.capabilities = capabilities
                vim.lsp.config(name, config)
                vim.lsp.enable(name)
            end
        end,
    },
}

