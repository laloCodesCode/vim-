-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_user_command("LiveServer", function()
  vim.cmd("!live-server index.html")
end, {})
