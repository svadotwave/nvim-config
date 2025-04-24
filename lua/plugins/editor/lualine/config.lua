local M = {}
local shared_sections = require("plugins.editor.lualine.sections")
local catppuccin = require("lualine.themes.catppuccin")
local mocha = require("catppuccin.palettes").get_palette("mocha")
local macchiato = require("catppuccin.palettes").get_palette("macchiato")

-- Modo NORMAL [a]
catppuccin.normal.a.bg = mocha.lavender -- Azul pastel
catppuccin.normal.a.fg = mocha.surface0

-- Modo INSERT [a]
catppuccin.insert.a.bg = mocha.green -- Verde pastel
catppuccin.insert.a.fg = mocha.surface0

-- Modo VISUAL [a]
catppuccin.visual.a.bg = mocha.pink -- Rosa pastel
catppuccin.visual.a.fg = mocha.surface0

-- Modo REPLACE [a]
catppuccin.replace.a.bg = mocha.red -- Rosa fuerte
catppuccin.replace.a.fg = mocha.surface0

-- Modo COMMAND [a]
catppuccin.command.a.bg = mocha.peach -- Naranja suave
catppuccin.command.a.fg = mocha.surface0

-- Modo INACTIVE [a]
catppuccin.inactive.a.bg = mocha.surface0 -- Gris oscuro
catppuccin.inactive.a.fg = mocha.text     -- Texto claro

-- Secction [b]
catppuccin.normal.b.bg = macchiato.base
catppuccin.normal.b.fg = mocha.subtext0

-- Secction [c]
catppuccin.normal.c.bg = macchiato.base

-- Secction [z, y]
catppuccin.normal.z = { fg = mocha.surface0, bg = mocha.flamingo }
catppuccin.normal.y = { fg = mocha.surface0, bg = mocha.maroon }
for _, mode in pairs(catppuccin) do
  mode.z = { fg = mocha.surface0, bg = mocha.flamingo }
  mode.y = { fg = mocha.surface0, bg = mocha.maroon }
end

-- Función opts
function M.opts()
  return {
    options = {
      theme = catppuccin,
      icons_enabled = true,
      globalstatus = true,
      component_separators = { "", "" },
      section_separators = { left = "", right = "" }, --  
      disabled_filetypes = {
        statusline = { "alpha" }, -- opcional: evita mostrar en estos
      },
    },
    sections = shared_sections,
    extensions = {
      {
        filetypes = { "neo-tree" },
        sections = shared_sections,
      },
    },
  }
end

return M
