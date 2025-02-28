return {
  -- 禁用 LSP 相關插件
  -- { "neovim/nvim-lspconfig", enabled = false },
  -- { "williamboman/mason.nvim", enabled = false },
  -- { "williamboman/mason-lspconfig.nvim", enabled = false },
  -- { "folke/neodev.nvim", enabled = false },

  -- 使用內建的 snacks explorer
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- 關閉動畫
  { "echasnovski/mini.animate", enabled = false },
  { "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },

  -- 停用自動補全，非常難用
  { "echasnovski/mini.pairs", enabled = false },
  { "Saghen/blink.cmp", enabled = false },

  -- 禁用需要編譯的插件，用於如TrueNAS等無法安裝C編譯器的機器
  -- { "jose-elias-alvarez/null-ls.nvim", enabled = false },
  -- { "nvim-treesitter/nvim-treesitter", enabled = false },
  -- { "nvim-treesitter/nvim-treesitter-textobjects", enabled = false },
  -- { "telescope/telescope-fzf-native.nvim", enabled = false },
  -- { "lewis6991/gitsigns.nvim", enabled = false },
}
