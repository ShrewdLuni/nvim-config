return {
  "js-everts/cmp-tailwind-colors",
  dependencies = { "hrsh7th/nvim-cmp" },
  event = "VeryLazy",
  config = function()
    local cmp = require("cmp")
    local tw_colors = require("cmp-tailwind-colors")

    cmp.setup({
      formatting = {
        format = tw_colors.formatter,
      },
    })
  end,
}
