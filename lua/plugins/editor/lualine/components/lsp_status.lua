local mocha = require("catppuccin.palettes").get_palette("mocha")

-- Componente personalizado para LSP
return {
  function()
    local clients = vim.lsp.get_clients({ bufnr = 0 })
    local buf_client_names = {}
    if #clients > 0 then
      for _, client in pairs(clients) do
        table.insert(buf_client_names, client.name)
      end
      return "󰅩 Lsp󰇙" .. table.concat(buf_client_names)
    else
      return "" -- 
    end
  end,
  color = function()
    local clients = vim.lsp.get_clients({ bufnr = 0 })
    if #clients > 0 then
      return { fg = mocha.subtext0 }
    else
      return { fg = "#5c6370" }
    end
  end,
  padding = { right = 2 },
}
