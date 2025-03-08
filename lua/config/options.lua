-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- colorscheme
vim.defer_fn(function()
  vim.cmd("colorscheme catppuccin-mocha")
end, 100)

-- To open termianl splits!
-- Open terminal in horizontal split with Ctrl + t
vim.api.nvim_set_keymap("n", "<C-t>", ":split | terminal<CR>", { noremap = true, silent = true })

-- Open terminal in vertical split with Ctrl + v
vim.api.nvim_set_keymap("n", "<C-v>", ":vsplit | terminal<CR>", { noremap = true, silent = true })
