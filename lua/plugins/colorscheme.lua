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
  "rockyzhang24/arctic.nvim",
  branch = "v2",
  dependencies = { "rktjmp/lush.nvim" },
  config = function()
    vim.cmd [[colorscheme arctic]]
  end,
}
