return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/tokyonight.nvim' },  
  lazy = false,
  name = "lualine",
  priority = 1000,
  config = function()
    require('lualine').setup() 
  end
}

