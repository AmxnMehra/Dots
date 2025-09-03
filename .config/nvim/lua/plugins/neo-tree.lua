return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.window = opts.window or {}
      opts.window.position = "right" -- move Neo-tree to the right
      opts.window.width = 25

      -- Add this block to show hidden files
      opts.filesystem = opts.filesystem or {}
      opts.filesystem.filtered_items = {
        visible = true, -- Show all items, including hidden ones
        hide_dotfiles = false, -- Show dotfiles like .gitignore, .env
        hide_gitignored = false, -- Show gitignored files
      }
    end,
  },
}
