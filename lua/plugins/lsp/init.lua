return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local servers = {
        lua_ls = require("plugins.lsp.servers.lua_ls"),
        -- phpactor = require("plugins.lsp.servers.phpactor"),
        -- jdtls = require("plugins.lsp.servers.jdtls"),
        -- pyright = require("plugins.lsp.servers.pyright"),
        -- tsserver = require("plugins.lsp.servers.tsserver"),
        -- clangd = require("plugins.lsp.servers.clangd"),
      }

      for name, config in pairs(servers) do
        vim.lsp.config(name, config)
        vim.lsp.enable(name)
      end
    end,
  },
}
