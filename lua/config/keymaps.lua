-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 在 vscode 中的 neovim 為獨立設定需要額外設定一次
-- 正常模式下使用黑洞模式刪除
map("n", "<c-d>", '"_dd', opts)

-- 視覺模式下使用黑洞模式刪除
map("v", "<C-d>", '"_d', opts)

-- 對調 `i` 和 `a`
map({'n', 'v'}, 'i', 'a', { noremap = true, silent = true })
map({'n', 'v'}, 'a', 'i', { noremap = true, silent = true })

local function smart_home()
  local line = vim.api.nvim_get_current_line()
  local col = vim.api.nvim_win_get_cursor(0)[2]
  local first_nonblank = line:find("[^%s]")
  
  if not first_nonblank then
    return vim.fn.mode() == 'i' and '<C-o>0' or '0'
  end
  
  first_nonblank = first_nonblank - 1
  if col == first_nonblank then
    return vim.fn.mode() == 'i' and '<C-o>0' or '0'
  end
  
  return vim.fn.mode() == 'i' and '<C-o>^' or '^'
end

vim.keymap.set({'n', 'v', 'i'}, '<Home>', function()
  return smart_home()
end, { expr = true, noremap = true, silent = true })
