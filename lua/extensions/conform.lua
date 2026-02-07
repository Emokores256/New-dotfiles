return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- vim.api.nvim_set_keymap(
			-- 	"n",
			-- 	"<leader>cf",
			-- 	":lua require('conform').format({ async = true, lsp_fallback = true })<CR>",
			-- 	{ noremap = true, silent = true }
			-- ),
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "n", -- Specify Normal mode
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = false,
		format_after_save = function(bufnr)
			return { lsp_fallback = true }
		end,
		-- format_on_save = function(bufnr)
		-- 	-- Disable "format_on_save lsp_fallback" for languages that don't
		-- 	-- have a well standardized coding style. You can add additional
		-- 	-- languages here or re-enable it for the disabled ones.
		-- 	local disable_filetypes = { c = true, cpp = true }
		-- 	if disable_filetypes[vim.bo[bufnr].filetype] then
		-- 		return nil
		-- 	else
		-- 		return {
		-- 			timeout_ms = 3000,
		-- 			lsp_format = "fallback",
		-- 			lsp_fallback = true,
		-- 		}
		-- 	end
		-- end,
		formatters = {
			pint = {
				stdin = false,
				command = vim.fn.expand("~/.local/share/nvim/mason/bin/pint"),
				exit_codes = { 0, 1 },
				args = { "$FILENAME" },
			},
		},
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use 'stop_after_first' to run the first available formatter from the list
			javascript = { "prettierd", "prettier", stop_after_first = true },
			php = { "pint" },
			css = { "prettierd", "prettier", stop_after_first = true },
		},
	},
}
