local opt = vim.opt
-- local fn = vim.fn

-- =======================
-- Configuración de colores
-- =======================
vim.opt.termguicolors = true -- Habilita el soporte para colores 24-bit

-- =======================
-- Configuración de diagnósticos
-- =======================
-- fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })  -- Error
-- fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })    -- Advertencia
-- fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })    -- Información
-- fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })    -- Sugerencia
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.INFO]  = "",
      [vim.diagnostic.severity.HINT]  = "",
    },
  },
})

-- =======================
-- Configuración de portapapeles y auto-guardado
-- =======================
opt.autowrite = true                                    -- Habilitar el auto-guardado de archivos
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sincroniza con el portapapeles del sistema

-- =======================
-- Configuración de autocompletado y formato
-- =======================
opt.completeopt = "menu,menuone,noselect" -- Configuración de autocompletado
opt.formatoptions = "jcroqlnt"            -- Opciones de formato

-- =======================
-- Configuración de búsqueda
-- =======================
opt.ignorecase = true      -- Ignorar mayúsculas y minúsculas en la búsqueda
opt.inccommand = "nosplit" -- Vista previa de la sustitución incremental

-- =======================
-- Configuración de la interfaz de usuario
-- =======================
opt.cursorline = true     -- Resalta la línea actual
opt.expandtab = true      -- Usar espacios en lugar de tabulaciones
opt.number = true         -- Mostrar el número de línea
opt.relativenumber = true -- Mostrar números relativos en lugar de absolutos
opt.signcolumn = "yes"    -- Siempre mostrar la columna de signos
opt.mouse = "a"           -- Habilitar el uso del ratón
opt.splitbelow = true     -- Crear nuevas ventanas debajo de la actual
opt.splitright = true     -- Crear nuevas ventanas a la derecha de la actual
opt.wrap = false          -- Deshabilitar el ajuste de líneas

-- =======================
-- Configuración de sesión y undo
-- =======================
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" } -- Opciones de sesión
opt.undofile = true                                                                                        -- Habilitar el uso de archivos de deshacer
opt.undolevels = 10000                                                                                     -- Número de niveles de deshacer

-- =======================
-- Configuración de indentación
-- =======================
opt.shiftwidth = 2     -- Tamaño de la indentación
opt.softtabstop = 2    -- Retroalimentación al presionar tab o backspace
opt.smartindent = true -- Indentación automática inteligente
opt.tabstop = 2        -- Número de espacios que cuenta una tabulación

-- =======================
-- Configuración de otros
-- =======================
opt.smartcase = true                          -- No ignorar mayúsculas si se usan en la búsqueda
opt.timeoutlen = vim.g.vscode and 1000 or 300 -- Tiempo de espera para comandos, más rápido para `which-key`
opt.virtualedit = "block"                     -- Permite el movimiento del cursor en donde no hay texto en el modo de bloque visual
opt.wildmode = "longest:full,full"            -- Modo de autocompletado en la línea de comandos
opt.spelllang = { "en" }                      -- Lenguaje para la corrección ortográfica
