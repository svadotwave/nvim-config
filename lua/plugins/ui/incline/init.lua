return {
  "b0o/incline.nvim",
  event = "BufReadPre", -- Load this plugin before reading a buffer
  priority = 1200, -- Set the priority for loading this plugin
  config = function()
    require("incline").setup({
    })
end,
}
