-- enable ssh copy
return {
  "ojroques/nvim-osc52",
  config = function()
    local osc52 = require("osc52")

    osc52.setup({
      max_length = 0,
      silent = false,
      trim = true,
    })

    local function copy()
      local reg = vim.v.event.regname
      if (vim.v.event.operator == "y" or vim.v.event.operator == "d") and (reg == "" or reg == "+") then
        osc52.copy_register('"')
      end
    end

    vim.api.nvim_create_autocmd("TextYankPost", {
      callback = copy,
    })

    vim.keymap.set("v", "<leader>y", osc52.copy_visual, { desc = "OSC52 Copy" })
  end,
}
