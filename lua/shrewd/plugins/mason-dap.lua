return {
  "jay-babu/mason-nvim-dap.nvim",
  event = "VeryLazy",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    require("mason-nvim-dap").setup({
      ensure_installed = { "debugpy" }, 
      automatic_installation = true,
    })
  end,
}

