return {
    "LazyVim/LazyVim", -- El plugin LazyVim
    dependencies = {
        require("plugins.colorscheme.install"), -- Instala los temas desde install.lua
    },
    opts = {
      -- Configuración del esquema de colores, puedes poner un tema predeterminado aquí
      colorscheme = "catppuccin",  -- Tema predeterminado para LazyVim
  },
    config = function()
      -- Aplica el tema manualmente después de que LazyVim cargue
      vim.cmd.colorscheme("catppuccin")
    -- Desactiva la integración con snacks manualmente
    local util = require("lazyvim.util")
    util.format = vim.tbl_deep_extend("force", util.format, {
      snacks_toggle = false, -- Desactiva Snacks
    })
  end,
}
