local hop = require("hop")
hop.setup()
local directions = require("hop.hint").HintDirection
vim.api.nvim_set_keymap("n", "<leader><leader>", ":HopWord<CR>", { noremap = true })
