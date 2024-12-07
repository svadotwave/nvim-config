local M = {}
local dashboard = require("alpha.themes.dashboard")

-- Define el contenido del header y los botones
M.header = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
}

M.buttons = {
  dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
  dashboard.button("SPC ee", "  > Toggle file explorer", ""),
  dashboard.button("SPC ff", "󰱼  > Find File", ""),
  dashboard.button("SPC fg", "  > Find Word", ""),
  dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", ""),
  dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
}

return M
