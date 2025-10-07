-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- To open termianl splits!
-- Open terminal in horizontal split with Ctrl + t
vim.api.nvim_set_keymap("n", "<C-t>", ":split | terminal<CR>", { noremap = true, silent = true })

-- Open terminal in vertical split with Ctrl + v
vim.api.nvim_set_keymap("n", "<C-v>", ":vsplit | terminal<CR>", { noremap = true, silent = true })

-- Jupyter/Notebook specific keybindings
-- Set localleader for notebook operations
vim.g.maplocalleader = ","

-- Quick notebook operations
vim.keymap.set("n", "<leader>jn", function()
  vim.cmd("enew")
  vim.bo.filetype = "python"
end, { desc = "New Python/Notebook file" })

-- Convert between .py and .ipynb formats
vim.keymap.set("n", "<leader>jp", ":Jupytext<CR>", { desc = "Convert to/from .py format" })
