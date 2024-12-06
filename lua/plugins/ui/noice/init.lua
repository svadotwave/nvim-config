return {
  "folke/noice.nvim",
  -- dependencies = {
  --   "MunifTanjim/nui.nvim",
  --   "rcarriga/nvim-notify",
  -- },
  event = "VeryLazy",
  config = function(_, opts)
    require("plugins.ui.noice.config").setup()
  end,
}
