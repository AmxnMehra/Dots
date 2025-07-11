-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- show cursor line only in active window
vim.api.nvim_create_autocmd({ "InsertLeave", "WinEnter" }, {
  callback = function()
    if vim.w.auto_cursorline then
      vim.wo.cursorline = true
      vim.w.auto_cursorline = nil
    end
  end,
})
vim.api.nvim_create_autocmd({ "InsertEnter", "WinLeave" }, {
  callback = function()
    if vim.wo.cursorline then
      vim.w.auto_cursorline = true
      vim.wo.cursorline = false
    end
  end,
})

-- backups
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("better_backup", { clear = true }),
  callback = function(event)
    local file = vim.uv.fs_realpath(event.match) or event.match
    local backup = vim.fn.fnamemodify(file, ":p:~:h")
    backup = backup:gsub("[/\\]", "%%")
    vim.go.backupext = backup
  end,
})

vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.filetype.add({
  extension = {
    overlay = "dts",
    keymap = "dts",
  },
})

-- vim.api.nvim_create_autocmd("QuickFixCmdPost", {
--   callback = function()
--     vim.cmd([[Trouble qflist open]])
--   end,
-- })

-- vim.api.nvim_create_autocmd("BufRead", {
--   callback = function(ev)
--     if vim.bo[ev.buf].buftype == "quickfix" then
--       vim.schedule(function()
--         vim.cmd([[cclose]])
--         vim.cmd([[Trouble qflist open]])
--       end)
--     end
--   end,
-- })

if vim.fn.has("nvim-0.10") == 1 then
  -- vim.api.nvim_create_autocmd({ "TermRequest", "TermResponse" }, {
  --   once = true,
  --   callback = function(ev)
  --     dd(ev.event, ev.data)
  --   end,
  -- })
end
