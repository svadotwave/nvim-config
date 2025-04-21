return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",
  opts = function()
    return require("plugins.editor.gitsings.config").opts() 
  end,
  config = function(_, opts)
    require("gitsigns").setup(opts)
  end,
}

