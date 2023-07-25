return {
  {
    "folke/flash.nvim",
    enabled = true,
    keys = {
      { "S", mode = { "n", "x", "o" }, false },
      {
        "S",
        mode = { "n", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
    },
    opts = {
      modes = {
        char = {
          jump_labels = true,
        },
      },
    },
  },
}
