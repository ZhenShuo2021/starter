return {
  -- 禁用 LSP 相關插件
  { "neovim/nvim-lspconfig", import = false },
  { "williamboman/mason.nvim", import = false },
  { "williamboman/mason-lspconfig.nvim", import = false },
  { "folke/neodev.nvim", import = false },

  -- 關閉動畫
  { "echasnovski/mini.animate", import = false },
  { "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
}
