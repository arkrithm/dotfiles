vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("lunarvim/Onedarker.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"lewis6991/gitsigns.nvim",
		tag = "release", -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
	})
	use({
		"phaazon/hop.nvim",
		branch = "v2",
		config = function()
			require("hop").setup({})
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-file-browser.nvim")
	use({
		"folke/noice.nvim",
		config = function()
			require("noice").setup({
				-- add any options here
			})
		end,
		requires = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	})
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	-- LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp") --補完エンジン本体
	use("hrsh7th/cmp-nvim-lsp") --LSPを補完ソースに
	use("hrsh7th/cmp-buffer") --bufferを補完ソースに
	use("hrsh7th/cmp-path") --pathを補完ソースに
	use("hrsh7th/vim-vsnip") --スニペットエンジン
	use("hrsh7th/cmp-vsnip") --スニペットを補完ソースに
	use("onsails/lspkind.nvim") --補完欄にアイコンを表示
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		event = "LspAttach",
		config = function()
			require("lspsaga").setup({})
		end,
	})
end)
