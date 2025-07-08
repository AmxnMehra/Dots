---@diagnostic disable: missing-fields
return {
  -- lsp servers

  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local Keys = require("lazyvim.plugins.lsp.keymaps").get()
      vim.list_extend(Keys, {
        {
          "gd",
          function()
            Snacks.picker.lsp_definitions()
          end,
          desc = "Goto Definition",
          has = "definition",
        },
        {
          "gr",
          function()
            Snacks.picker.lsp_references()
          end,
          nowait = true,
          desc = "References",
        },
        {
          "gI",
          function()
            Snacks.picker.lsp_implementations()
          end,
          desc = "Goto Implementation",
        },
        {
          "gy",
          function()
            Snacks.picker.lsp_type_definitions()
          end,
          desc = "Goto T[y]pe Definition",
        },
        {
          "<leader>ss",
          function()
            Snacks.picker.lsp_symbols({ filter = LazyVim.config.kind_filter })
          end,
          desc = "LSP Symbols",
          has = "documentSymbol",
        },
        {
          "<leader>sS",
          function()
            Snacks.picker.lsp_workspace_symbols({ filter = LazyVim.config.kind_filter })
          end,
          desc = "LSP Workspace Symbols",
          has = "workspace/symbols",
        },
      })

      opts.diagnostics = {
        virtual_text = { prefix = "icons" },
      }

      opts.inlay_hints = {
        enabled = false,
      }

      opts.capabilities = opts.capabilities or {}
      opts.capabilities.workspace = opts.capabilities.workspace or {}
      opts.capabilities.workspace.didChangeWatchedFiles = {
        dynamicRegistration = false,
      }
    end,
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "dprint", "prettier" },
        ["javascriptreact"] = { "dprint" },
        ["typescript"] = { "dprint", "prettier" },
        ["typescriptreact"] = { "dprint" },
      },
      formatters = {
        dprint = {
          condition = function(_, ctx)
            return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
          end,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        lua = { "selene", "luacheck" },
      },
      linters = {
        selene = {
          condition = function(ctx)
            local root = LazyVim.root.get({ normalize = true })
            if root ~= vim.uv.cwd() then
              return false
            end
            return vim.fs.find({ "selene.toml" }, { path = root, upward = true })[1]
          end,
        },
        luacheck = {
          condition = function(ctx)
            local root = LazyVim.root.get({ normalize = true })
            if root ~= vim.uv.cwd() then
              return false
            end
            return vim.fs.find({ ".luacheckrc" }, { path = root, upward = true })[1]
          end,
        },
      },
    },
  },
}
