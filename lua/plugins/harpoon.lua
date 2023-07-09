return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>a", ':lua require("harpoon.mark").add_file()<cr>' },
    { "[a", ':lua require("harpoon.ui").nav_prev()<cr>' },
    { "]a", ':lua require("harpoon.ui").nav_next()<cr>' },
    { "<leader>m", ':lua require("harpoon.ui").toggle_quick_menu()<cr>' },
  },
}
