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
        require('lspconfig').lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })
        require('lspconfig').pyright.setup({ disableOrganizeImports = true, capabilities = Capabilities})
        require('lspconfig').ts_ls.setup({ capabilities = Capabilities })
        -- require('lspconfig').omnisharp.setup({ cmd = { "D:/Software/NvimOmnisharp/OmniSharp.exe", "--languageserver", "--hostPID", tostring(vim.fn.getpid()) } })
        require('lspconfig').csharp_ls.setup({ capabilities = Capabilities})
        require('lspconfig').clangd.setup({})
        require('lspconfig').tailwindcss.setup({ capabilities = Capabilities })
        require('lspconfig').cssls.setup({ capabilities = Capabilities })
        require('lspconfig').emmet_language_server.setup({ capabilities = Capabilities })
    end,
}
