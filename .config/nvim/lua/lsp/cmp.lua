local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			-- 例: vim-vsnip を使う場合 (プラグインとしてインストールが必要)
			-- vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		-- 適宜キーバインドを追加
		-- ['<CR>'] = cmp.mapping.confirm({ select = false }),
		-- ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		-- ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- LSPによる補完
		{ name = "path" }, -- ファイルパス補完
	}, {
		{ name = "buffer" }, -- バッファ内の単語補完(お好みで)
	}),
})
