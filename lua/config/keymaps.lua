-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Modify the motions to adapt to the BÉPO layout
-- Moving Down
vim.keymap.set("n", "t", "j", { silent = true })
-- Moving Up
vim.keymap.set("n", "s", "k", { silent = true })
-- Moving Right
vim.keymap.set("n", "r", "l", { silent = true })
-- Moving Left
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

-- Leave insert mode by tapping qq
vim.keymap.set("i", "qq", "<ESC>", { silent = true })
