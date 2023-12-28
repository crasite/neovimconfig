return {
  "nvimtools/none-ls.nvim",
  enabled = false,
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.prettierd,
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.flake8,
      },
    }
  end,
}
