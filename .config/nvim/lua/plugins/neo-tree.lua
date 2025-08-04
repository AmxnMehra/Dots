return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window = opts.window or {}
      opts.window.position = "right" -- move Neo-tree to the right
      opts.window.width = 25
    end,
  },
}
