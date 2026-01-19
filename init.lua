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

vim.o.splitright = true
vim.o.splitbelow = true

vim.g.have_nerd_font = true

vim.g.material_style = "deep ocean"

-- Load lazy.nvim to lazy load the rest of the extensions
require("config.lazy")
