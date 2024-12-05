return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    require("plugins.ui.alpha.config")
  end,
}
