return {
  "folke/which-key.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  event = "VeryLazy",
  opts = function()
    return require("plugins.editor.which-key.config").opts()
  end,
  config = function(_, opts)
    require("which-key").setup(opts)
  end,
}
