-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 關閉拼字檢查
vim.opt.spell = false
vim.opt.spelllang = {}

-- 關閉自動格式化
vim.g.autoformat = false

-- 關閉診斷顯示
vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  underline = false,
  update_in_insert = false,
  severity_sort = false,
})

-- 關閉相對行號
vim.opt.relativenumber = false
