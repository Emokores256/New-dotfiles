return {
	"yetone/avante.nvim",
	build = vim.fn.has("win32") ~= 0 and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
		or "make",
	event = "VeryLazy",
	version = false,
	opts = {
		instructions_file = "avante.md",
		provider = "opencode",
		providers = {
			opencode = {
				__inherited_from = "openai",
				-- api_key_name = "AVANTE_KILOGATEWEAY_API_KEY", -- set in .basrc
				endpoint = "https://api.minimax.io/anthropic/v1",
				model = "MiniMax-M2.5",
			},
		},
		windows = {
			width = 40,
			border = "single",
			ask = {
				floating = false,
				border = "rounded",
				start_insert = true,
			},
			edit = {
				border = "single",
				start_insert = true,
			},
		},
		input = {
			provider = "snacks",
		},
	},
	selector = {
		provider = "fzf",
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-mini/mini.pick",
		"ibhagwan/fzf-lua",
		"folke/snacks.nvim",
		"echasnovski/mini.icons",
		{
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
					use_absolute_path = true,
				},
			},
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
