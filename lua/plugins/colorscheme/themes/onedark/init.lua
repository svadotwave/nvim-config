return {
  'navarasu/onedark.nvim',             -- Nombre del plugin
  name = 'onedark',                    -- Nombre del tema
  event = 'VimEnter',                  -- Evento para cargar el tema
  enabled = true,                      -- Si está habilitado o no
  config = function()                  -- Configuración para aplicar el tema
    vim.cmd('colorscheme onedark')     -- Comando para aplicar el tema
  end,
}
