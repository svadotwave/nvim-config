local mocha = require("catppuccin.palettes").get_palette("mocha")

-- Componente para formateador
return {
  function()
    -- local function echo(msg)
    --   vim.api.nvim_echo({ { msg, "None" } }, true, {})
    -- end
    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = 0 })

    -- Revisar si algún cliente tiene formateo habilitado
    for _, client in ipairs(clients) do
      if client.server_capabilities.documentFormattingProvider then
        return "󰄭 Fmt󰇙default" -- .. client.name 🛠       󰅩 
      end
    end

    -- Revisa si existe formatter externo en el sistema
    local ok, fmt_ext = pcall(require, "conform")
    if not ok then
      return " "
    end

    local fmt = fmt_ext.list_formatters(bufnr)

    -- Si existe, formatea con el formatter externo
    for _, formatter in ipairs(fmt) do
      if formatter.available then
        return "󰄭 Fmt::" .. formatter.name
      end
    end

    -- Si no existe ningun formatter disponible
    return " "
  end,

  -- Color dinámico
  color = function()
    local bufnr = vim.api.nvim_get_current_buf()
    local clients = vim.lsp.get_clients({ bufnr = 0 })

    for _, client in ipairs(clients) do
      if client.server_capabilities.documentFormattingProvider then
        return { fg = mocha.subtext0 } -- verde si hay LSP formatter
      end
    end

    local ok, fmt_ext = pcall(require, "conform")
    if not ok then
      return { fg = "#5c6370" } -- gris si nada
    end

    local fmt = fmt_ext.list_formatters(bufnr)

    for _, formatter in ipairs(fmt) do
      if formatter.available then
        return { fg = mocha.subtext0 } -- verde si hay externo
      end
    end

    return { fg = "#5c6370" } -- gris si ninguno
  end,
  padding = { right = 2 }
}
