return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("plugins.lsp.mason.config")
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = "williamboman/mason.nvim",
  },
}
