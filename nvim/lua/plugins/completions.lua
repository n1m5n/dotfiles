return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_next_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "luasnip" },
        },
      })
      vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#000000" })
      require("cmp").setup({
        window = {
          completion = {
            winhighlight = "Normal:CmpNormal",
          }
        }
      })
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
}
