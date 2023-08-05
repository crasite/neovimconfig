-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.swapfile = false

opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldmethod = "expr"
opt.foldlevel = 99
opt.swapfile = false
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

vim.api.nvim_create_user_command("Rfinder", function()
  local path = vim.api.nvim_buf_get_name(0)
  os.execute("open -R " .. path)
end, {})
