-- simple keymap: save
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--local keymap = vim.keymap

--vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<leader>q", function()
	vim.cmd("confirm quit")
end)
