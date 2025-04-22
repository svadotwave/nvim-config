-- Instalar y retornar todas las configuraciones de temas
local themes = { "catppuccin", "onedark", "onenord", "tokyonight" }

local configs = {}

for _, theme in ipairs(themes) do
  local theme_path = "plugins.colorscheme.themes." .. theme
  local ok, theme_config = pcall(require, theme_path)
  if ok and type(theme_config) == "table" then
    table.insert(configs, theme_config)
  else
    vim.notify("No se pudo cargar el tema: " .. theme, vim.log.levels.WARN)
  end
end

return configs
