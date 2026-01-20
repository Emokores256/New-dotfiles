return {
	"marko-cerovac/material.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("material").setup({
			plugins = {
				"gitsigns",
				"mini",
				"which-key",
				"blink",
			},
			contrast = { filetypes = { "php", "lua", "javascript", "css", "typescript" } },
		})
		-- vim.cmd("colorscheme material")
	end,
}
