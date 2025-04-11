return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1001,
  opts = {},
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
    })
    vim.cmd.colorscheme("tokyonight")
  end,
}
