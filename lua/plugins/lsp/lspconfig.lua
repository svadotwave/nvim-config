return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
  },
  config = function()
    local on_attach = function(client, bufnr)
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)

      -- Aseguramos que null-ls pueda manejar el formateo si está presente
      if client.name == "null-ls" then
        client.resolved_capabilities.document_formatting = true
      end
    end

    -- Configuración automática de los servidores instalados por Mason
    require("mason-lspconfig").setup_handlers({
      -- Configuración por defecto para todos los servidores
      function(server_name)
        require("lspconfig")[server_name].setup({
          on_attach = on_attach,
        })
      end,
      -- Configuración personalizada para el servidor `lua_ls`
      ["lua_ls"] = function()
        require("lspconfig").lua_ls.setup({
          on_attach = on_attach,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        })
      end,
    })

    -- Formateo automático al guardar
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
      pattern = "*",
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })

    -- Atajo para formatear el código manualmente
    vim.keymap.set("n", "<leader>f", function()
      vim.lsp.buf.format({ async = true })
    end, { desc = "Format current buffer" })

    -- local lspconfig = require("lspconfig")
    -- Configuración básica de servidores LSP
    -- lspconfig.pyright.setup{}  -- Python
    -- lspconfig.tsserver.setup{} -- JavaScript/TypeScript
    -- lspconfig.lua_ls.setup{}
  end,
}
