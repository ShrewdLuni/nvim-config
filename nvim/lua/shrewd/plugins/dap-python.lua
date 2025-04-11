return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
    "jay-babu/mason-nvim-dap.nvim",
    "williamboman/mason.nvim",
  },
  config = function()
    local dap_python = require("dap-python")
    local mason_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/scripts/python"
    dap_python.setup(mason_path)
    vim.keymap.set("n", "<leader>dpr", function()
      dap_python.test_method()
    end)
  end,
}

