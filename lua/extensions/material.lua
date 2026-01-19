return {
	"marko-cerovac/material.nvim",
	priority = 1000,
	config = function()
		require("material").setup({
			plugins = {
				"gitsigns",
				"mini",
				"which-key",
				"blink",
			},
		})
		vim.cmd("colorscheme material")
	end,
}
