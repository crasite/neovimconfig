return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>gdd",
      function()
        local ref = vim.fn.input({ prompt = "Ref: ", default = "HEAD" })
        if ref == nil or ref == "" then
          return
        end
        vim.cmd("DiffviewOpen " .. ref)
      end,
      desc = "Diff from revision",
    },
    { "<leader>gdt", "<cmd>DiffviewFileHistory %<cr>", desc = "Diff this file" },
    { "<leader>gdc", "<cmd>DiffviewClose<cr>", desc = "Close Diff" },
    { "<leader>go", "<cmd>OpenOldRevision<cr>", desc = "View this file from other revision" },
  },
}
