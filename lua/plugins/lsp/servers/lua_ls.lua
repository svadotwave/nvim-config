-- utils
local on_attach = require("plugins.lsp.utils.on_attach").on_attach
local capabilities = require('blink.cmp').get_lsp_capabilities()

return {
  on_attach = on_attach,       -- Función para configurar atajos
  capabilities = capabilities, -- Habilitar capacidades como autocompletado
  -- config
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = { "vim" },
      },
    }
  }
}
