return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    return require("plugins.ui.lualine.config").opts() 
  end,
  config = function(_, opts)
    require("lualine").setup(opts)
  end,
}
