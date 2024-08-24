vim.g.mapleader = " "

local opts = { noremap = true }

vim.keymap.set("n", "<leader>l", vim.cmd.Ex, opts)

vim.keymap.set("n", "<leader><Up>", "<C-w>k", opts)
vim.keymap.set("n", "<leader><Down>", "<C-w>j", opts)
vim.keymap.set("n", "<leader><Left>", "<C-w>h", opts)
vim.keymap.set("n", "<leader><Right>", "<C-w>l", opts)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("n", "<C-x>", "<cmd>:x<CR>", opts)
vim.keymap.set("n", "<C-q>", "<cmd>:q!<CR>", opts)

--terminal
vim.keymap.set("n", "<S-t>", "<cmd>:terminal<CR>i", opts)
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts)

-- telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<F2>", telescope_builtin.find_files, {})
vim.keymap.set("n", "<F3>", telescope_builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, {})
