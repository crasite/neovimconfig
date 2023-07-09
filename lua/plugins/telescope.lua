local Util = require("lazyvim.util")
return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  keys = {
    {
      "<leader>ss",
      Util.telescope("lsp_document_symbols", {
        symbols = {
          "Class",
          "Function",
          "Method",
          "Constructor",
          "Interface",
          "Module",
          "Struct",
          "Trait",
        },
      }),
      desc = "Goto Symbols",
    },
    {
      "<leader>sx",
      Util.telescope("lsp_document_symbols", {}),
      desc = "Goto Symbols (all)",
    },
  },
}
