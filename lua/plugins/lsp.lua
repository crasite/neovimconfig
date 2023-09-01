return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false, id = "lsp_hover" }
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover, id = "lsp_hover" }
  end,
  opts = {
    servers = {
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              black = {
                enabled = true,
              },
              pycodestyle = {
                ignore = { "W391" },
                maxLineLength = 100,
              },
            },
          },
        },
      },
      tailwindcss = {
        settings = {
          tailwindCSS = {
            classAttributes = { "class", "className", "ngClass" },
            experimental = {
              classRegex = { "cn\\(([^)]*)\\)", "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
            },
          },
        },
      },
    },
  },
}
