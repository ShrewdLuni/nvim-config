return {
  'williamboman/mason.nvim',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require('mason').setup({})
    require('mason-lspconfig').setup({
      automatic_enable = false,
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
