return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = {
        'lua_ls',
        'pyright',
        'ts_ls',
        'omnisharp',
        'csharp_ls',
        'clangd',
        'cssls',
        'tailwindcss',
        'emmet_language_server',
      },
    })
  end,
}
