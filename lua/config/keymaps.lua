-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Modify the motions to adapt to the BÉPO layout
vim.keymap.set("n", "t", "j", { silent = true })
vim.keymap.set("n", "s", "k", { silent = true })
vim.keymap.set("n", "r", "l", { silent = true })
vim.keymap.set("n", "c", "h", { silent = true })
--
-- Remap t (unTil) to j--
vim.keymap.set("n", "j", "t", { silent = true })
-- Remap s (Substitute) to h
vim.keymap.set("n", "h", "s", { silent = true })
-- Remap r (Replace) to l
vim.keymap.set("n", "l", "r", { silent = true })
-- Sacrifice c (delete and insert [motion]), and remap k to none
vim.keymap.set("n", "k", "", {})
-- Remap cc (delete [count lines] and insert) to kk
vim.keymap.set("n", "kk", "cc", {})

-- Modify the <C-x> as well
vim.keymap.set("n", "<C-c>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-t>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-s>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-r>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Modify the <S-x> as well
vim.keymap.set("n", "<S-r>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-c>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Move Lines
vim.keymap.set("n", "<A-t>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-s>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-t>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-s>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-t>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-s>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Leave insert mode by tapping qq
vim.keymap.set("i", "qq", "<ESC>", { silent = true })
