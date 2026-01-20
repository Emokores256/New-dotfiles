vim.o.number = true -- use line numbers
vim.o.relativenumber = true -- use relative line numbers
vim.o.confirm = true -- confirm commands
vim.o.expandtab = true -- convert tabs to spaces
vim.o.shiftwidth = 4 -- amount to indent with << and >>

vim.o.tabstop = 4 -- how many space are shown per tab
vim.o.softtabstop = 4 -- How many spaces are applied when pressing tab
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.autoindent = true -- keep indentation from previous line

vim.o.cursorline = true
vim.o.undofile = true -- store undos between sessions

vim.o.mouse = "a" -- enable mouse mode

vim.o.showmode = false -- disable vim's default show mode (eg. -- INSERT --, --VISUAL --)

vim.o.breakindent = true -- enable break indent

vim.o.ignorecase = true -- case-insensitive searching unless /C or one or more uppercase letters in the search term
vim.o.smartcase = true

vim.o.signcolumn = "yes" -- enable sign column always

vim.opt.autowriteall = true -- enable auto-save

-- Autosave after leaving insert mode
vim.api.nvim_create_autocmd({ "InsertLeave", "FocusLost" }, {
	group = vim.api.nvim_create_augroup("AutoSave", { clear = true }),
	callback = function()
		-- Check if the current buffer is modifiable and not readonly, then write silently
		if vim.bo.modifiable and not vim.bo.readonly then
			vim.cmd("silent! write")
		end
	end,
})

-- -- disable Vim's default PHP (maybe even other languages) syntax
-- vim.g.php_syntax_extensions_enabled = 0
-- vim.cmd("syntax off")

-- Fix Treesitter parser not working
vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"php",
		"lua",
		"markdown",
		"css",
		"scss",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"html",
	},
	callback = function()
		vim.treesitter.start()
	end,
})

vim.o.splitright = true
vim.o.splitbelow = true

vim.g.have_nerd_font = true

-- for material theme:
vim.g.material_style = "darker"

-- Load lazy.nvim to lazy load the rest of the extensions
require("config.lazy")

-- load theme:
vim.cmd("colorscheme palenight") -- or vim.cmd.colorscheme("your_theme")

-- BlinkCmp autocomplete menu styling
vim.api.nvim_set_hl(0, "BlinkCmpMenuShadow", { bg = "#000000", blend = 50 })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#5f87ff", bg = "#000000" })
vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { fg = "#ffffff", bg = "#5f87ff", bold = true })
vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", { fg = "#5f87ff", bg = "#1e1e2e" })

-- vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
-- 	callback = function()
-- 		vim.api.nvim_set_hl(0, "BlinkCmpMenuShadow", { bg = "#000000", blend = 50 })
-- 		vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#5f87ff", bg = "NONE" })
-- 		vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { fg = "#ffffff", bg = "#5f87ff", bold = true })
-- 		vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", { fg = "#5f87ff", bg = "#1e1e2e" })
-- 	end,
-- })

-- semantic token fixes
-- vim.api.nvim_set_hl(0, "@lsp.type.function", { link = "Function" })
-- vim.api.nvim_set_hl(0, "@lsp.type.method", { link = "Function" })
--
-- -- For future auto theme switches
-- vim.api.nvim_create_autocmd("ColorScheme", {
-- 	callback = function()
-- 		vim.api.nvim_set_hl(0, "@lsp.type.function", { link = "Function" })
-- 		vim.api.nvim_set_hl(0, "@lsp.type.method", { link = "Function" })
-- 	end,
-- })
