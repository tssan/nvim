vim.g.mapleader = " "

vim.keymap.set("n", "<leader>l", vim.cmd.Ex)

vim.keymap.set("n", "<leader><Up>", "<C-w>k")
vim.keymap.set("n", "<leader><Down>", "<C-w>j")
vim.keymap.set("n", "<leader><Left>", "<C-w>h")
vim.keymap.set("n", "<leader><Right>", "<C-w>l")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
