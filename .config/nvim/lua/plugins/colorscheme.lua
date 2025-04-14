vim.g.colors_name = "catppuccin"
return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- you can change to latte, frappe, etc.
      transparent_background = true, -- 🔥 this enables transparency
      integrations = {
        treesitter = true,
        cmp = true,
        telescope = {
          enabled = true,
        },
        notify = true,
        mini = true,
        noice = true,
        which_key = true,
        gitsigns = true,
        mason = true,
        neotree = true,
        dashboard = true,
        lsp_saga = true,
        native_lsp = {
          enabled = true,
        },
      },
    })

    -- Apply the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}
