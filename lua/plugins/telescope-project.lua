return {
  "nvim-telescope/telescope-project.nvim",
  opts = {},
  config = function(_, opts)
    require("telescope").load_extension("project")
  end,
  keys = {
    { "<leader>fp", "<Cmd>Telescope project<CR>", desc = "Projects" },
  },
}
