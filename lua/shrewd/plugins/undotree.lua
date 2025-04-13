return {
  'mbbill/undotree',
  event="VeryLazy",
  priority="990",
  config = function()
    vim.g.undotree_DiffCommand = "FC"
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end,
}
