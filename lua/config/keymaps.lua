-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps herea

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 在 vscode 中的 neovim 為獨立設定需要額外設定一次
-- 正常模式下使用黑洞模式刪除
map("n", "<c-d>", '"_dd', opts)

-- 視覺模式下使用黑洞模式刪除
map("v", "<C-d>", '"_d', opts)
