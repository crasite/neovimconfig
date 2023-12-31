return {
  "echasnovski/mini.pairs",
  init = function()
    vim.g.minipairs_disable = true
  end,
  config = function(pl, opts)
    require(pl.name).setup(opts)
  end,
}
