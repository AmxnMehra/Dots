return {
  "andweeb/presence.nvim",
  lazy = false,
  config = function()
    require("presence").setup({
      debug = true, -- Enable debugging
    })
  end,
}
