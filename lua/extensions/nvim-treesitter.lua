return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",

	configs = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"bash",
				"diff",
				"lua",
				"luadoc",
				"vim",
				"vimdoc",
				"mackdown",
				"mackdown_inline",
				"query",
				"html",
				"css",
				"javascript",
				"json",
				"typescript",
				"php",
				"phpdoc",
			},
			sync_install = false,
			auto_intall = true,
			highlight = { enable = true },
			indent = { enable = true },

			-- This is a block of code that is still not functioning. Most likely due to plugin re-write.
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>",
					node_incremental = "<Enter>",
					scope_incremental = false,
					node_decremental = "<Backspace>",
				},
			},
		})
	end,
}
