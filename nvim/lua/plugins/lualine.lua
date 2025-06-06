return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local custom_theme = require("lualine.themes.base16")
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = custom_theme,
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
		})
	end,
}
