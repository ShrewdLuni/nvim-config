return {
  'johnpmitsch/vai.nvim',
  event = "VeryLazy",
  config = function()
    require('vai').setup({
      trigger = '\\',
    })
  end,
}
