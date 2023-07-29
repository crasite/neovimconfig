return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shfmt",
      "typescript-language-server",
      "rust-analyzer",
      "python-lsp-server",
      "tailwindcss-language-server",
    },
  },
}
