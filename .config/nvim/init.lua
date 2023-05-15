require("base")
require("keybind")
require("plugins")
require("plugin.treesitter")
require("plugin.lualine")
require("plugin.web-debicons")
require("plugin.autopairs")
require("plugin.indent-blankline")
require("plugin.gitsigns")
require("plugin.hop")
require("plugin.telescope")
require("plugin.noice")
require("lsp.lspconfig")
require("lsp.cmp")
require("lsp.lspsaga")
require("plugin.bufferline")

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "plugins.lua" },
	command = "PackerCompile",
})

vim.cmd("colorscheme onedarker")
