local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
	{ "echasnovski/mini.pairs", version = false },
	{ "echasnovski/mini.comment", version = false },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"smoka7/hop.nvim",
		event = "BufRead",
		version = "*",
		opts = {
			multi_windows = true,
		},
		keys = {
			{ "<leader><leader>", "<cmd>HopWord<CR>", mode = "n", desc = "Hop Word" },
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
	},
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			-- プラグイン読み込み後に mason の設定ファイルを呼び出す
			require("lsp.mason")
		end,
	},

	-- mason-lspconfig + nvim-lspconfig
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		config = function()
			require("lsp.lsp_config")
		end,
	},

	-- nvim-cmp (補完プラグイン本体)
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP補完ソース
			"hrsh7th/cmp-path", -- ファイルパス補完ソース
			-- "hrsh7th/vim-vsnip",  -- スニペットを使う場合はこれ等も必要
		},
		config = function()
			require("lsp.cmp")
		end,
	},
	{
		"github/copilot.vim",
		lazy = false,
	},
	{
		"lewis6991/gitsigns.nvim",
	},
    {'akinsho/toggleterm.nvim', version = "*", config = true},
})
