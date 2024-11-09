return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons", -- Dependencias del plugin
  config = function()
    require("configs.bufferline_config")
  end,
}
