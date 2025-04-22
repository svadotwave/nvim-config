local M = {}
local shared_sections = require("plugins.editor.lualine.sections")

-- Función opts
function M.opts()
  return {
    options = {
      theme = "catppuccin",
      globalstatus = true,
      component_separators = { "", "" },
      section_separators = { left = "", right = "" },
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
