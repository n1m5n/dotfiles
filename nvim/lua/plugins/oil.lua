return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    use_default_keymaps = true,
  },
  keys = {
    {
      "<leader>tt",
      function()
        require("oil").open()
      end,
      desc = "Oil (Current Dir Float)",
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

