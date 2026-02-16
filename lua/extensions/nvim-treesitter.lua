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
				"markdown",
				"markdown_inline",
				"query",
				"html",
				"css",
				"javascript",
				"json",
				"typescript",
				"typescriptreact",
				"php",
				"php_only",
				"phpdoc",
			},
			sync_install = false,
			auto_install = true,
			highlight = { enable = true, additional_vim_regex_highlighting = true },
			indent = { enable = true },

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
