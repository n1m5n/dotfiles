return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup {
      filetype = {
        python = {
          "python3",
          "$fileName",
        },
        javascript = {
          "node",
          "$fileName",
        },
        cpp = {
          "g++",
          "$fileName",
          "-o",
          "$fileNameWithoutExt.out",
          "&&",
          "./$fileNameWithoutExt.out",
        },
        java = {
          "java",
          "$fileName",
        },
      },
      mode = "float",
      float = {
        border = "rounded",
        height = 0.8,
        width = 0.8,
      },
    }
  end,
  keys = {
    {
      "<leader>zz",
      function()
        require("code_runner").run_code()
      end,
      desc = "Run current file",
    },
  },
}

