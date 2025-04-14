return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["<tab>"] = "open", -- instead of "toggle_node" or "toggle_preview"
        ["<s-tab>"] = "toggle_node", -- if you still want shift-tab to expand/collapse
      },
    },
  },
}
