return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		keymaps = {
			-- ["<C-h>"] = { "actions.toggle_hidden", mode = "n" },
			["<Esc>"] = { "actions.close", mode = "n" },
		},

		view_options = { show_hidden = true }, -- show hidden files (dotfiles)
	},
	-- Optional dependencies
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
