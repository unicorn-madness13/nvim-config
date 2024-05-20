vim.g.mapleader = " "

-- these two remaps do the same thing as <ALT+UP/DOWN> in VSCode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Q is the worst place in the universe apparently
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "gs", "^")
vim.keymap.set("n", "gl", "$")
