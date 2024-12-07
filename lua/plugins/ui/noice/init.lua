return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  event = "VeryLazy",
  opts = function()
    return require("plugins.ui.noice.config").opts()
  end,
  config = function(_, opts)
    require("noice").setup(opts)
  end,
}
