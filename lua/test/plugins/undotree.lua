return {
  "jiaoshijie/undotree",
  opts = {
    float_diff = true,
    position = "right",
  },
  keys = {
    { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
  },
}
