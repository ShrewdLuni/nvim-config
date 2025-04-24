return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
  },
  event = { "BufReadPre", "BufNewFile" },
  priority = 1001,
  config = function()
    local cmp = require('cmp')
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    Capabilities = vim.tbl_deep_extend(
       "force",
       {},
       vim.lsp.protocol.make_client_capabilities(),
       require("cmp_nvim_lsp").default_capabilities()
     )

    local icons = {
        Text = "",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰇽",
        Variable = "󰂡",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "󰅲",
    }

    cmp.setup({
      sources = {
        {name = 'nvim_lsp'},
      },
      window = {
        documentation = cmp.config.window.bordered({
            scrollbar = false,
            winhighlight = "Normal:CmpDocsNormal,FloatBorder:CmpFloatBorder,CursorLine:CmpCursorLine,Search:CmpSearch",
        }),
        completion = cmp.config.window.bordered({
            scrollbar = false,
            winhighlight = "Normal:CmpNormal,FloatBorder:CmpFloatBorder,CursorLine:CmpCursorLine,Search:CmpSearch",
        }),
      },
      formatting = {
          format = function(entry, item)
              require("cmp-tailwind-colors").format(entry, item)
              item.kind = string.format("%s %s", icons[item.kind] or "", item.kind)

              local function trim(text)
                local max = 20
                if text and text:len() > max then
                    text = text:sub(1, max) .. "..."
                end
                return text
              end

              item.abbr = trim(item.abbr)

              item.menu = nil

              return item
          end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
      }),
    })
  end,
}
