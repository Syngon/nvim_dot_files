vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', '<c-a>', 'ggVG')

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

keymap.set('n', "j", [[v:count?'j':'gj']], { noremap = true, expr = true })
keymap.set('n', "k", [[v:count?'k':'gk']], { noremap = true, expr = true })

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>h", "<cmd>noh<CR>")


keymap.set("n", "<leader>sh", "<cmd>split<CR>")
keymap.set("n", "<leader>sv", "<cmd>vsplit<CR>")
keymap.set("n", "<C-h>", "<C-W>h")
keymap.set("n", "<C-l>", "<C-W>l")
keymap.set("n", "<C-j>", "<C-W>j")
keymap.set("n", "<C-k>", "<C-W>k")