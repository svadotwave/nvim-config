require("plugins.editor.neo-tree.keys")

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "󰆓 Save File", noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "󰆓 Save & Quit", noremap = true, silent = true })
