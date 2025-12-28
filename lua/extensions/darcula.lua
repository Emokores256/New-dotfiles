return {
	"xiantang/darcula-dark.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		-- setup must be called before loading
		require("darcula").setup({
			override = function(c)
				return {
					background = "#333333",
					dark = "#282c34",
					-- dark = "#1c1b1b", -- change the background to your custom Darcula colorscheme background
				}
			end,
			opt = {
				integrations = {
					fzf = true,
					snacks = true,
					mini_statusline = true,
					lsp_semantics_token = true,
					blink_cmp = true,
					dap_nvim = true,
				},
			},
		})
		-- vim.cmd.colorscheme("darcula-dark")
	end,
}
