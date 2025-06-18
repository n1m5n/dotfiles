return {
  "vague2k/vague.nvim",
  config = function()
    require("vague").setup({
      transparent = true,
      italic = false,
    })
    vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
    vim.cmd.colorscheme("vague")
  end
}

