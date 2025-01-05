local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	-- インストールしたいサーバーを列挙
	ensure_installed = { "lua_ls", "pyright" },
})

-- mason-lspconfig が管理している各サーバーに対しての設定
mason_lspconfig.setup_handlers({
	-- すべてのサーバーに共通して適用する設定
	function(server)
		require("lspconfig")[server].setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			-- 必要なら on_attach や各サーバー固有の設定を追加
			-- on_attach = function(client, bufnr)
			--   -- キーマップなど...
			-- end
		})
	end,
})
