return {
  'neovim/nvim-lspconfig',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'folke/lsp-colors.nvim',
  },
  config = function()
    local original_notify = vim.notify
    vim.notify = function(msg, ...)
      if type(msg) == "string" and msg:match("csharp%-ls is released under MIT license") then
        return
      end
      return original_notify(msg, ...)
    end

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })

    vim.lsp.config('*', {
      root_markers = { '.git' },
      capabilities = require('cmp_nvim_lsp').default_capabilities(),
    })

    vim.lsp.config('lua_ls', {
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
        },
      },
    })
    vim.lsp.enable('lua_ls')

    vim.lsp.config('pyright', {
      settings = {
        python = {
          analysis = {
          },
        },
      },
    })
    vim.lsp.enable('pyright')

    vim.lsp.config('ts_ls', {filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },})
    vim.lsp.enable('ts_ls')

    vim.lsp.config('clangd', {})
    vim.lsp.enable('clangd')

    vim.lsp.config('tailwindcss', {})
    vim.lsp.enable('tailwindcss')

    vim.lsp.config('cssls', {})
    vim.lsp.enable('cssls')

    vim.lsp.config('emmet_language_server', {})
    vim.lsp.enable('emmet_language_server')

    vim.lsp.config('dockerls', {})
    vim.lsp.enable('dockerls')

    vim.lsp.config('docker_compose_language_service', {})
    vim.lsp.enable('docker_compose_language_service')

    vim.lsp.config('sqlls', {})
    vim.lsp.enable('sqlls')

    vim.lsp.config('sourcekit', {})
    vim.lsp.enable('sourcekit')

  end,
}

