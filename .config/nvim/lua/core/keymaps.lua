-- Basic
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })

-- Oil
vim.keymap.set("n", "<leader>fo", "<CMD>Oil --float<CR>", { desc = "Oil current buffer's directory" })

vim.keymap.set("n", "<leader>fO", "<CMD>Oil --float .<CR>", { desc = "Oil ." })
