-- Componente personalizado para LSP
local lsp = {
  function()
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })
    local buf_client_names = {}
    if #clients > 0 then
      for _, client in pairs(clients) do
        table.insert(buf_client_names, client.name)
      end
      return " " .. table.concat(buf_client_names)
    else
      return " "
    end
  end,
  color = function()
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })
    if #clients > 0 then
      return { fg = "#a6da95" }
    else
      return { fg = "#5c6370" }
    end
  end,
}

-- Componente para formateador
local formatter = {
  function()
    local bufr = vim.api.nvim_get_current_buf()
    local fmt = require("conform").list_formatters(bufr)
    local clients = vim.lsp.get_active_clients({ bufnr = 0 })

    if #clients > 0 then
      for _, client in ipairs(clients) do
        if client.server_capabilities.documentFormattingProvider then
          return " " .. client.name
        else
          for _, l in ipairs(fmt) do
            if l.available then
              return " " .. l.name
            end
          end
          return " "
        end
      end
    else
      return " "
    end
  end,
  color = { fg = "#c0caf5" },
}

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

-- Procesar secciones
local function process_sections(sections)
  for name, section in pairs(sections) do
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

return process_sections({
  lualine_a = { "mode", " " },
  lualine_b = {
    "branch",
    {
      "diff",
      colored = true,
      symbols = {
        removed = " ",
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
      sources = { "nvim_diagnostic" },
      sections = { "error", "warn", "info", "hint" },
      symbols = {
        error = " ",
        warn = " ",
        info = " ",
        hint = " ",
      },
      colored = true,
      update_in_insert = false,
    },
    lsp,
    formatter,
    "filetype",
  },
  lualine_y = { "progress" },
  lualine_z = { "location" },
})
