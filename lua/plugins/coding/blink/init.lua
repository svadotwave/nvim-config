return {
  "saghen/blink.cmp",
  lazy = false,                       -- Esto indica que el plugin no debe cargarse perezosamente
  dependencies = {
    "rafamadriz/friendly-snippets",   -- Dependencia del plugin friendly-snippets
  },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = { documentation = { auto_show = false } },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
