return {
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    config = function()
      require("onedark").setup({
        style = "cool", -- Opciones: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer'
        highlights = {
          -- neo-tree
          -- NeoTreeWinSeparator = { bg = "#242B38", fg = "#242B38" },
          NeoTreeWinSeparator = { fg = "#7d899f", bg = "#242b38" },
          NeoTreeNormal = { bg = "#242b38" }, -- Cambia el color de fondo
          NeoTreeNormalNC = { bg = "#242b38" }, -- Cambia el color de fondo
          NeoTreeEndOfBuffer = { bg = "#242b38" }, -- Cambia el color de la zona vacía al final del buffer
        },
      })
      require("onedark").load()
    end,
  },
}
