return {
  -- Plugin to get leetcode on nvim
  -- Just run leet
  {
    "kawre/leetcode.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim", -- optional
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("leetcode").setup()
    end,
    cmd = "Leet",
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = false, -- Disable Snacks Explorer
      },
    },
  },
}
