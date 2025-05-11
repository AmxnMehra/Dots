return {
  "voltycodes/areyoulockedin.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  config = function()
    require("areyoulockedin").setup({
      session_key = "dfdfeecf-174a-4952-9086-81aa0238b88e", --get the session_key from the areyoulockedin.com
    })
  end,
}
