return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'folke/lsp-colors.nvim',
  },
  config = function()
    require('lspconfig').lua_ls.setup({})
    require('lspconfig').pyright.setup({})
    require('lspconfig').ts_ls.setup({})
    require('lspconfig').omnisharp.setup({})
  end,
}