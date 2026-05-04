vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory" })

-- keymaps for nvim-treesitter-textobjects
vim.keymap.set("n", "<leader>a", function()
	require("nvim-treesitter-textobjects.swap").swap_next("@parameter.inner")
end)
vim.keymap.set("n", "<leader>A", function()
	require("nvim-treesitter-textobjects.swap").swap_previous("@parameter.outer")
end)

-- LSP functions
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Actions" })

-- Database manager
vim.keymap.set({ "n", "v" }, "<leader>db", require("dbee").open())

-- keymaps for fzf
vim.keymap.set("n", "<leader>ff", function()
	require("fzf-lua").files()
end, { desc = "[F]ind [F]ile in current project directory" })
vim.keymap.set("n", "<leader>fg", function()
	require("fzf-lua").live_grep()
end, { desc = "Live grepping in current project directory" })
vim.keymap.set("n", "<leader>fc", function()
	require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
end, { desc = "[F]ind [C]onfiguration in Neovim directory" })
vim.keymap.set("n", "<leader>fb", function()
	require("fzf-lua").builtin()
end, { desc = "[F]ind [B]uiltin fuzzies for the fzf" })
vim.keymap.set("n", "<leader>fh", function()
	require("fzf-lua").helptags()
end, { desc = "[F]ind [H]elp" })
vim.keymap.set("n", "<leader>fk", function()
	require("fzf-lua").keymaps()
end, { desc = "[F]ind [K]eymaps" })
vim.keymap.set("n", "<leader><leader>", function()
	require("fzf-lua").buffers()
end, { desc = "Open buffers" })
vim.keymap.set("n", "<leader>fo", function()
	require("fzf-lua").oldfiles()
end, { desc = "[F]ind [O]ld files" })
vim.keymap.set("n", "<leader>/", function()
	require("fzf-lua").lgrep_curbuf()
end, { desc = "live grep current file or buffer" })
vim.keymap.set("n", "<leader>fr", function()
	require("fzf-lua").resume()
end, { desc = "[F]ind [R]esume" })

-- keymap for diagnostic floated window
vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open the next diagnostic in floated window" })

-- Pane navigaitons
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { silent = true, desc = "Move to left pane" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { silent = true, desc = "Move to lower pane" })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { silent = true, desc = "Move to upper pane" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { silent = true, desc = "Move to right pane" })

-- Buffer manipulation keymaps
vim.keymap.set("n", "<C-x>", ":bd<CR>", { silent = true, desc = "Closes current buffer" })
vim.keymap.set("n", "<C-X>", ":bd!<CR>", { silent = true, desc = "Force closes current buffer and discards changes" })
vim.keymap.set("n", "<C-Left>", ":bprevious<CR>", { silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<C-Right>", ":bnext<CR>", { silent = true, desc = "Next buffer" })
