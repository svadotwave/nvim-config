local M = {}

M.save_status = {
  function()
    if vim.bo.modified then
      return "" -- icono de lápiz (modificado)
    else
      return "" -- icono de "guardado" (o puedes dejarlo vacío "")
    end
  end,
  color = function()
    if vim.bo.modified then
      return { fg = "#313244" } -- naranja para indicar cambios
    else
      return { fg = "#313244" } -- verde si está guardado
    end
  end,
  padding = { left = 1, right = 1 },
}

return M
