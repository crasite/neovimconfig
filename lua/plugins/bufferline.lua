return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<M-S-h>", "<Cmd>BufferLineMovePrev<CR>", desc = "Move buffer left" },
    { "<M-S-l>", "<Cmd>BufferLineMoveNext<CR>", desc = "Move buffer right" },
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
  },
}
