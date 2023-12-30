-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.swapfile = false

opt.foldlevel = 99
opt.swapfile = false
opt.foldcolumn = "1" -- '0' is not bad
opt.conceallevel = 2 -- PREVIOUSLY 3 -- Hide * markup for bold and italic
opt.foldlevelstart = 99
opt.foldenable = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

vim.api.nvim_create_user_command("Rfinder", function()
  local path = vim.api.nvim_buf_get_name(0)
  os.execute("open -R " .. path)
end, {})

vim.api.nvim_create_user_command("OpenOldRevision", function()
  local plenary = require("plenary")
  local fpa_rel = plenary.path:new(vim.api.nvim_buf_get_name(0)):make_relative()
  local tmpDir = vim.fn.tempname()
  local bufFileName = tmpDir .. fpa_rel
  local ref = vim.fn.input({ prompt = "Ref: ", default = "HEAD" })
  vim.cmd("tabedit " .. bufFileName .. " | r !git show " .. ref .. ":" .. fpa_rel)
end, {})
