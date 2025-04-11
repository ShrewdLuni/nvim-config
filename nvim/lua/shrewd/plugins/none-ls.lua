return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require("null-ls").builtins.formatting.prettierd,
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.code_actions.refactoring,
      },
    })
  end,
}
