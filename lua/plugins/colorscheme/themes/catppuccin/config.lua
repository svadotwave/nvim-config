local M = {}

M.opts = function()
  return {
    flavour = "macchiato",
      integrations = {
        cmp = true,
        neotree = true,
        treesitter = true,
        noice = true,
        mason = true,
        gitsigns = true,
        notify = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
      },
      custom_highlights = {
        WinSeparator = { fg = "#7d899f", bg = "#24273a" },
        NeoTreeWinSeparator = { fg = "#7d899f", bg = "#24273a" },
        NeoTreeNormal = { bg = "#24273a" }, -- Cambia el color de fondo
        NeoTreeNormalNC = { bg = "#24273a" }, -- Cambia el color de fondo
        NeoTreeEndOfBuffer = { bg = "#24273a" }, -- Cambia el color de la zona vacía al final del buffer

        -- Colores para Telescope basados en Noice (Catppuccin Macchiato)
        TelescopeBorder = { fg = "#b7bdf8", bg = "#24273a" }, -- Borde
        TelescopeNormal = { bg = "#24273a" }, -- Fondo principal
        TelescopePromptNormal = { bg = "#24273a" }, -- Fondo del prompt
        TelescopePromptTitle = { fg = "#b7bdf8", bg = "#24273a" }, -- Título del prompt
        TelescopeResultsTitle = { fg = "#b7bdf8", bg = "#24273a" }, -- Título de resultados
        TelescopeSelection = { bg = "#363a4f" }, -- Selección

        -- Color del ícono del prompt
        TelescopePromptPrefix = { fg = "#f5bde6" }, -- Ícono (puedes personalizarlo)
        TelescopeSelectionCaret = { bg = "#363a4f", fg = "#f5bde6" }, -- Color del símbolo seleccionador
      },
  }
end

return M
