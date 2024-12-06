local lualine = require("lualine")

local colors = {
  red = "#ca1243",
  grey = "#5b6078",
  black = "#383a42",
  white = "#f3f3f3",
  light_green = "#83a598",
  orange = "#fe8019",
  green = "#8ec07c",
}

local empty = require("lualine.component"):extend()
function empty:draw(default_highlight)
  self.status = ""
  self.applied_separator = ""
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
  for name, section in pairs(sections) do
    -- Solo aplica el cambio si la sección es lualine_a
    if name == "lualine_a" then
      local left = name:sub(9, 10) < "x"
      for pos = 1, name ~= "lualine_z" and #section or #section - 1 do
        table.insert(section, pos * 2, { empty, color = { bg = colors.grey } })
      end
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

lualine.setup({
  options = {
    -- theme = "catppuccin",
    -- section_separators = { "", "" },
    component_separators = { "", "" },
    -- component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
  },
  sections = process_sections({
    lualine_a = { "mode", " " },
    lualine_b = {
      "branch",
      {
        "diff",
        colored = true,
        symbols = {
          removed = " ", -- Icono para archivos eliminados
          added = " ",
          deleted = " ",
          modified = "󰤌 ",
          renamed = " ",
        },
      },
    },
    lualine_c = { "filename" },
    lualine_x = {
      {
        "diagnostics",
        sources = { "nvim_diagnostic" }, -- Usa el sistema de diagnósticos de Neovim
        sections = { "error", "warn", "info", "hint" }, -- Tipos de diagnóstico
        symbols = {
          error = " ",
          warn = " ",
          info = " ",
          hint = " ",
        },
        colored = true, -- Usa colores según el esquema
        update_in_insert = false, -- No actualiza en modo Insertar
      },
      "encoding",
      "filetype",
    },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  }),
})
