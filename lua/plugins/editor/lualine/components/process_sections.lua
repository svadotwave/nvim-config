local M = {}
-- Componente vacío
local empty = require("lualine.component"):extend()
function empty:draw(default_highlight)
  self.status = ""
  self.applied_separator = ""
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Colores personalizados
local colors = {
  red = "#ca1243",
  grey = "#5b6078",
  black = "#383a42",
  white = "#f3f3f3",
  light_green = "#83a598",
  orange = "#fe8019",
  green = "#8ec07c",
}

M.process_sections = function(sections)
  for name, section in pairs(sections) do
    if name == "lualine_a" or name == "lualine_z" then
      local left = name == "lualine_a"

      -- Si tiene más de un componente, inserta separadores entre ellos
      if #section > 1 then
        for pos = 1, #section - 1 do
          table.insert(section, pos * 2, { empty, color = { bg = colors.grey } })
        end
      else
        -- Si tiene solo uno y es lualine_z, inserta un bloque al principio
        if name == "lualine_z" then
          table.insert(section, 1, { empty, color = { bg = colors.grey } })
        end
      end

      -- Asegura que todos sean tablas y asigna separadores
      for id, comp in ipairs(section) do
        if type(comp) ~= "table" then
          comp = { comp }
          section[id] = comp
        end
        comp.separator = left and { right = "" } or { left = "" }
      end
    end
  end
  return sections
end

return M
