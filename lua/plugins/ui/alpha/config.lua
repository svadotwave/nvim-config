local M = {}
local dashboard = require("alpha.themes.dashboard")
local section = require("plugins.ui.alpha.sections")

M.opts = function()
  -- Asignamos los valores
  dashboard.section.header.val = section.header
  dashboard.section.buttons.val = section.buttons

  -- Devolvemos las opciones del dashboard
  return dashboard.config
end

return M
