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
    require('lspconfig').lua_ls.setup({
    settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
    require('lspconfig').pyright.setup({disableOrganizeImports = true})
    require('lspconfig').ts_ls.setup({capabilities = Capabilities})
    require('lspconfig').omnisharp.setup({})
    require('lspconfig').csharp_ls.setup({})
    require('lspconfig').clangd.setup({})
    require('lspconfig').tailwindcss.setup({capabilities = Capabilities})
    require('lspconfig').cssls.setup({capabilities = Capabilities})
    require('lspconfig').emmet_language_server.setup({capabilities = Capabilities})
  end,
}
