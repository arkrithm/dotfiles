local cmp = require("cmp")

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- LSPによる補完
		{ name = "path" }, -- ファイルパス補完
	}, {
		{ name = "buffer" }, -- バッファ内の単語補完(お好みで)
	}),
})
