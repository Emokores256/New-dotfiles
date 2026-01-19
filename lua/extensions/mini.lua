return {
	-- Collection of various small independent plugins/modules
	"nvim-mini/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Better bracket pair handling, including quotes
		require("mini.pairs").setup()

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		statusline.setup({
			-- set use_icons to true if you have a Nerd Font
			use_icons = vim.g.have_nerd_font,

			-- Rewrite and reconfig for mini.statusline to match material theme.
			-- -- NOTE: This might not be necessary, since there's a "mini" declaration in the plugins listing.
			-- vim.api.nvim_create_autocmd("ColorScheme", {
			-- 	pattern = "material",
			-- 	callback = function()
			-- 		local material = require("material.colors")
			--
			-- 		vim.api.nvim_set_hl(0, "MiniStatuslineMode", {
			-- 			fg = material.editor.bg,
			-- 			bg = material.main.blue,
			-- 			bold = true,
			-- 		})
			--
			-- 		vim.api.nvim_set_hl(
			-- 			0,
			-- 			"MiniStatuslineDevinfo",
			-- 			{ fg = material.editor.fg, bg = material.main.cyan }
			-- 		)
			-- 		vim.api.nvim_set_hl(
			-- 			0,
			-- 			"MiniStatuslineFilename",
			-- 			{ fg = material.editor.fg, bg = material.main.green }
			-- 		)
			-- 		vim.api.nvim_set_hl(
			-- 			0,
			-- 			"MiniStatuslineFileinfo",
			-- 			{ fg = material.editor.fg, bg = material.main.yellow }
			-- 		)
			-- 		vim.api.nvim_set_hl(
			-- 			0,
			-- 			"MiniStatuslineInactive",
			-- 			{ fg = material.editor.fg_dark, bg = material.editor.bg_alt }
			-- 		)
			-- 	end,
			-- }),
		})

		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we set the section for
		-- cursor location to LINE:COLUMN
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		-- ... and there is more!
		--  Check out: https://github.com/nvim-mini/mini.nvim
	end,
}
