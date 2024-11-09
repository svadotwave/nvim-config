return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("configs.mason_config")
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = "williamboman/mason.nvim",
  },
}
