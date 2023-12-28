return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false, id = "lsp_hover" }
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover, id = "lsp_hover" }
  end,
  opts = {
    servers = {
      tsserver = {
        keys = {
          { "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
          { "<leader>cR", "<cmd>TypescriptRenameFile<CR>", desc = "Rename File" },
        },
        settings = {
          typescript = {
            format = {
              indentSize = vim.o.shiftwidth,
              convertTabsToSpaces = vim.o.expandtab,
              tabSize = vim.o.tabstop,
            },
          },
          javascript = {
            format = {
              indentSize = vim.o.shiftwidth,
              convertTabsToSpaces = vim.o.expandtab,
              tabSize = vim.o.tabstop,
            },
          },
          completions = {
            completeFunctionCalls = true,
          },
        },
      },
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
