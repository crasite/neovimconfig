return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "gh", vim.lsp.buf.hover }
    require("lspconfig").volar.setup({
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
    })
  end,
}
