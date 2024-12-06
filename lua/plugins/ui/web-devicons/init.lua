return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      override = {
        json = { icon = "", color = "#cbcb41", name = "Json" },
        --  js = { icon = "", color = "#F1E05A", name = "Js" },
        java = { icon = "", color = "#B54B3A", name = "Java" },
        ["README.md"] = { icon = "", color = "#D08770", name = "Readme" }, -- Cambia el color a tu preferencia
        ["README"] = { icon = "", color = "#D08770", name = "Readme" },
        -- Añade aquí los iconos adicionales que necesites
      },
      default = true, -- Usa iconos por defecto si no hay especificación
    })
  end,
}
