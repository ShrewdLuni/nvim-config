return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    Capabilities = vim.tbl_deep_extend(
       "force",
       {},
       vim.lsp.protocol.make_client_capabilities(),
       require("cmp_nvim_lsp").default_capabilities()
     )

    cmp.setup({
      sources = {
        {name = 'nvim_lsp'},
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      formatting = {
        format = require("nvim-highlight-colors").format
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
      }),
    })
  end,
}
