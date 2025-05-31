local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	-- インストールしたいサーバーを列挙
	ensure_installed = { "lua_ls", "pyright" },
})
