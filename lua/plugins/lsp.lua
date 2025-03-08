return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {}, -- TypeScript/JavaScript
      texlab = {}, -- LaTeX
      clangd = {}, -- C/C++
      cssls = {}, -- CSS
      pyright = {}, -- Python
      lua_ls = {}, -- Lua
      tailwindcss = {}, -- Tailwind CSS
      css_variables = {}, -- CSS Variables LSP
      jdtls = {}, -- Java
      shfmt = {}, -- Shell script formatting
      stylua = {}, -- Lua code formatting
    },
  },
}
