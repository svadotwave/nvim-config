return {
	"akinsho/bufferline.nvim",
	dependencies = "nvim-tree/nvim-web-devicons", -- Dependencias del plugin
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						highlight = "Directory",
						text_align = "center",
						separator = true,
					},
				},
			},

			highlights = {
				-- fill = { bg = "#3b4252" },
				fill = { bg = "#363c51" },
				offset_separator = {
					fg = "#7d899f",
					bg = "#242b38",
				},
			},
		})
	end,
}
