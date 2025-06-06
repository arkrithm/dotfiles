-- 修正版：Copilot providerに適切なモデルを指定
return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	lazy = false,
	version = false,
	opts = {
		-- Copilot providerの設定
		provider = "copilot",

		-- 新しい設定形式：正しいモデル名を指定
		providers = {
			copilot = {
				endpoint = "https://api.githubcopilot.com",
				model = "claude-sonnet-4", -- Copilotで利用可能なモデル
				proxy = nil,
				allow_insecure = false,
				timeout = 30000,
				extra_request_body = {
					temperature = 0,
					max_tokens = 4096,
				},
			},
		},

		-- その他の設定
		behaviour = {
			auto_suggestions = false,
			auto_set_highlight_group = true,
			auto_set_keymaps = true,
			auto_apply_diff_after_generation = false,
			support_paste_from_clipboard = false,
			minimize_diff = true,
		},

		hints = { enabled = true },
		windows = {
			position = "right",
			wrap = true,
			width = 30,
			sidebar_header = {
				enabled = true,
				align = "center",
				rounded = true,
			},
		},
		highlights = {
			diff = {
				current = "DiffText",
				incoming = "DiffAdd",
			},
		},
	},

	build = "make",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
		"zbirenbaum/copilot.lua", -- for providers='copilot'
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
