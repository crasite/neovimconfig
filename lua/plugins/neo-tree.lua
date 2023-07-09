return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree").close_all()
        end,
      },
    },
  },
}
