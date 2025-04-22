return {
  'rmehri01/onenord.nvim',             -- Nombre del plugin
  name = 'onenord',                    -- Nombre del tema
  event = 'VimEnter',                  -- Evento para cargar el tema
  enabled = true,                      -- Si está habilitado o no
  config = function()                  -- Configuración para aplicar el tema
    vim.cmd('colorscheme onenord')     -- Comando para aplicar el tema
  end,
}
