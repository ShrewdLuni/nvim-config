return {
  "startup-nvim/startup.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- local theme = require("shrewd.startup_shrewd")
    require("startup").setup(require("shrewd.startup_shrewd"))
  end,
}
