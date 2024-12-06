local M = {}

M.setup = function()
  require("noice").setup({
    lsp = {
      progress = {
        enabled = false, -- Desactiva mensajes de progreso LSP
      },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      hover = {
        silent = true, -- No muestra mensaje si hover no está disponible
      },
    },
    routes = {
      {
        filter = {
          event = "notify",
          kind = { "info", "warn" },
        },
        view = "notify", -- Muestra notificaciones capturadas
      },
      {
        filter = {
          event = "lsp",
          kind = "progress",
          find = "ServiceReady", -- Captura solo mensajes con "ServiceReady"
        },
        opts = {
          replace = false, -- Evita que sobrescriba otros mensajes
        },
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
    },
    history = {
      enabled = true, -- Asegura que se registre en el historial
    },
  })
end

return M

