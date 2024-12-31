-- onedark theme
-- return {
--   "navarasu/onedark.nvim",
--   config = function()
--     require("onedark").setup {
--       style = "darker",
--     }
--     vim.cmd [[colorscheme onedark]]
--   end,
-- }

-- vscode theme
return {
  -- 禁用 LSP 相關插件
  { "neovim/nvim-lspconfig", enabled = false },
  { "williamboman/mason.nvim", enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  { "folke/neodev.nvim", enabled = false },

  -- 關閉動畫
  { "echasnovski/mini.animate", enabled = false },
  { "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
}
