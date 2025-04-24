local m = {}

-- Lista de servidores LSP que tendrán el formateo personalizado
local custom_formatters = {
  -- "lua_ls", -- Lua - stylua
  -- "jdtls", -- Java - sin soporte nativo
  -- "clangd", -- C & C++ -
}

m.on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  -- require("snacks").notify.info("on_attach", { timeout = 3000 })

  -- Deshabilitar formateo (default) para algunos clientes LSP (custom_formatters)
  if vim.tbl_contains(custom_formatters, client.name) then
    client.server_capabilities.documentFormattingProvider = false
  end

  -- atajos de teclado para funcionalidades lsp
  vim.keymap.set("n", "<k>", vim.lsp.buf.hover, bufopts)            -- documentación
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)        -- ir a definición
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)    -- ir a implementación
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)        -- buscar referencias
  vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, bufopts) -- ayuda de firma
  vim.keymap.set("n", "cr", vim.lsp.buf.rename, bufopts)            -- renombrar
  vim.keymap.set("n", "ga", vim.lsp.buf.code_action, bufopts)       -- acciones de código quickfix
  vim.keymap.set("n", "ct", vim.lsp.buf.type_definition, bufopts)   -- definición de tipo

  -- Formateo automático al guardar
  vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
    pattern = "*",
    callback = function()
      -- require("snacks").notify.info("formateo", { timeout = 3000 })
      -- vim.cmd([[Format]])
      -- require("conform").format()
      -- vim.lsp.buf.format({ async = false })

      if client.server_capabilities.documentFormattingProvider then
        -- formateo LSP
        vim.lsp.buf.format({ async = false })
      else
        -- formateo Conform
        require("conform").format()
      end
    end,
  })
end

return m
