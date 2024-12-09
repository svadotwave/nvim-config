return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  opts = function()
    return require("plugins.ui.alpha.config").opts()
  end,
  config = function(_, opts)
    require("alpha").setup(opts)
  end,
}
