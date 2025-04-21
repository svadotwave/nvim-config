local M = {}

M.opts = function()
 return {
      enable_git_status = true,
      enable_diagnostics = true,
      
      window = {
        position = "right",
        width = 40,
        mappings = {
          ["<tab>"] = "focus_preview",
          ["l"] = "open",
          ["h"] = "close_node",
        }
      },

      default_component_configs = {
        icon = {
          folder_closed = "", -- Icono para carpetas cerradas
          folder_open = "", -- Icono para carpetas abiertas
          folder_empty = "", -- Icono para carpetas vacías
          default = "", -- Icono para archivos que no tengan un tipo específico
        },

        diagnostics = {
          symbols = {
            error = "",
            warn = "",
            info = "",
            hint = "",
          },
        },

        git_status = {
          symbols = {
            -- Change type
            added = "✚",
            deleted = "✖",
            modified = "",
            renamed = "󰁕",
            -- Status type
            untracked = "", -- Archivos no rastreados ""
            ignored = "", -- Archivos ignorados ""
            unstaged = "󰄱", -- Cambios no preparados "󰄱"
            staged = "", -- Cambios preparados ""
            conflict = "", -- Conflicto de combinación ""
          },
        },

        -- Personaliza cómo se ven los iconos de diferentes tipos de archivos
        file_icon = {
          highlight = "NeoTreeFileIcon",
        },
      },
      -- Configuración adicional de neo-tree si es necesario
  }
end

return M
