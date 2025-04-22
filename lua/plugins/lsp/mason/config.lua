require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    -- "phpactor",
    -- "jdtls",
    -- "pyright",
    -- "tsserver",
    -- "clangd",
  },
})
