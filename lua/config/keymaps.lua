-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- To open termianl splits!
-- Open terminal in horizontal split with Ctrl + t
vim.api.nvim_set_keymap("n", "<C-t>", ":split | terminal<CR>", { noremap = true, silent = true })

-- Open terminal in vertical split with Ctrl + v
vim.api.nvim_set_keymap("n", "<C-v>", ":vsplit | terminal<CR>", { noremap = true, silent = true })
