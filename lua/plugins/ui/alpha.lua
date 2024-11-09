return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    require("configs.alpha_config")
  end,
}
