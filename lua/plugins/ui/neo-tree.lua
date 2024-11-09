return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      default_component_configs = {
        icon = {
          folder_closed = "", -- Icono para carpetas cerradas
          folder_open = "", -- Icono para carpetas abiertas
          folder_empty = "", -- Icono para carpetas vacías
          default = "", -- Icono para archivos que no tengan un tipo específico
        },
        -- Personaliza cómo se ven los iconos de diferentes tipos de archivos
        file_icon = {
          highlight = "NeoTreeFileIcon",
        },
      },
      -- Configuración adicional de neo-tree si es necesario
    })
  end,
}
