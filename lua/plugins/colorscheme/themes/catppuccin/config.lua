local M = {}

M.opts = function()
  return {
    flavour = "mocha",
    transparent_background = true,
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
    custom_highlights = function(colors)
      return {
        CursorLine              = { bg = "#363a4f" }, -- fondo de la línea actual (surface0 - Macchiato)

        -- Colores para Neo-Tree
        WinSeparator            = { fg = colors.overlay1, bg = "NONE" },                -- Cambia el color de la linea divisora de neo-tree
        NeoTreeNormal           = { bg = "NONE" },                                      -- Cambia el color de fondo ventana activa
        NeoTreeNormalNC         = { bg = "NONE" },                                      -- Cambia el color de fondo ventana no activa (No focus)
        NeoTreeEndOfBuffer      = { fg = "NONE", bg = "NONE" },                         -- Cambia el color de la zona vacía al final del buffer
        NeoTreeMessage          = { fg = colors.subtext0, bg = "NONE", italic = true }, -- texto de mensajes (hidden)

        -- Colores para Telescope basados en Noice (Catppuccin Macchiato)
        TelescopeBorder         = { fg = "#b7bdf8", bg = "#24273a" }, -- Borde
        TelescopeNormal         = { bg = "#24273a" },                 -- Fondo principal
        TelescopePromptNormal   = { bg = "#24273a" },                 -- Fondo del prompt
        TelescopePromptTitle    = { fg = "#b7bdf8", bg = "#24273a" }, -- Título del prompt
        TelescopeResultsTitle   = { fg = "#b7bdf8", bg = "#24273a" }, -- Título de resultados
        TelescopeSelection      = { bg = "#363a4f" },                 -- Selección

        -- Color del ícono del prompt
        TelescopePromptPrefix   = { fg = "#f5bde6" },                 -- Ícono (puedes personalizarlo)
        TelescopeSelectionCaret = { bg = "#363a4f", fg = "#f5bde6" }, -- Color del símbolo seleccionador
      }
    end,
  }
end

return M
