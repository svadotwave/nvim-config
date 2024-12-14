return {
    'folke/tokyonight.nvim', -- Nombre del plugin
    name = 'tokyonight',      -- Nombre del tema
    event = 'VimEnter',       -- Evento para cargar el tema
    enabled = true,          -- Si está habilitado o no
    config = function()       -- Configuración para aplicar el tema
        vim.cmd('colorscheme tokyonight')  -- Comando para aplicar el tema
    end,
}
