-- local process_sections = require("plugins.editor.lualine.components.process_sections").process_sections
local lsp_status = require("plugins.editor.lualine.components.lsp_status")
local formatter = require("plugins.editor.lualine.components.formatter")
local save_status = require("plugins.editor.lualine.components.save_status").save_status

return {
  lualine_a = {
    {
      "mode",
      padding = { left = 1 },
    },
  },
  lualine_b = {
    {
      "branch",
      icon = "",
      padding = { left = 2 }
    },
    {
      "diff",
      colored = true,
      symbols = {
        removed = "⬤ ", -- 
        added = "⬤ ", -- 
        deleted = "⬤ ", -- 
        modified = "⬤ ", -- 󰤌
        renamed = "⬤ ", -- 
      },
    },
  },
  lualine_c = {},
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
    lsp_status,
    formatter,
  },
  lualine_y = {
    {
      function()
        local ft = vim.bo.filetype
        if ft == "neo-tree" then
          return "󰙅 neo-tree"
        end
        local filename = vim.fn.expand("%:t")
        local extension = vim.fn.expand("%:e")
        local icon = require("nvim-web-devicons").get_icon(filename, extension, { default = true })
        return string.format("%s %s", icon or "", filename)
      end,
      color = { fg = "#313244" }
    }
  },
  lualine_z = {
    {
      "progress",
      padding = { right = 0 }
    },
    {
      "location",
      padding = { left = 0 }
    },
    save_status,
  },
}
