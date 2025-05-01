return {
  "folke/tokyonight.nvim",
  -- event = { "BufReadPre", "BufNewFile" },
  priority = 999,
  opts = {},
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
      on_highlights = function(hl)
        hl.CmpNormal = { bg = "NONE", fg = "#aaafff", bold = true }
        hl.CmpDocsNormal = { bg = "NONE", fg = "#aaafff", bold = true }
        hl.CmpFloatBorder = { bg = "NONE", fg = "#7a3ba8", bold = true }
        hl.CmpCursorLine = { bg = "NONE", fg = "#E8B75F", bold = true }
        hl.CmpSearch = { bg = "#aaafff", fg = "Black", bold = true }

        hl.CmpItemAbbr = { bg = "NONE", fg = "#aaafff", bold = true }
        hl.CmpItemAbbrMatch = { bg = "NONE", fg = "#7a3ba8", bold = true }
        hl.CmpItemAbbrMatchFuzzy = { bg = "NONE", fg = "#E90064", bold = true }

        hl.CmpItemKindText = { fg = "#aaafff" }
        hl.CmpItemKindMethod = { fg = "#FF3EA5" }
        hl.CmpItemKindFunction = { fg = "#FF3EA5" }
        hl.CmpItemKindConstructor = { fg = "#aaafff" }
        hl.CmpItemKindField = { fg = "#8B5DFF" }
        hl.CmpItemKindVariable = { fg = "#8B5DFF" }
        hl.CmpItemKindClass = { fg = "#E90064" }
        hl.CmpItemKindInterface = { fg = "#aaafff" }
        hl.CmpItemKindModule = { fg = "#E90064" }
        hl.CmpItemKindProperty = { fg = "#8B5DFF" }
        hl.CmpItemKindUnit = { fg = "#332FD0" }
        hl.CmpItemKindValue = { fg = "#332FD0" }
        hl.CmpItemKindEnum = { fg = "#E90064" }
        hl.CmpItemKindKeyword = { fg = "#8B5DFF" }
        hl.CmpItemKindSnippet = { fg = "#aaafff" }
        hl.CmpItemKindColor = { fg = "#aaafff" }
        hl.CmpItemKindFile = { fg = "#aaafff" }
        hl.CmpItemKindReference = { fg = "#aaafff" }
        hl.CmpItemKindFolder = { fg = "#aaafff" }
        hl.CmpItemKindEnumMember = { fg = "#E90064" }
        hl.CmpItemKindConstant = { fg = "#E90064" }
        hl.CmpItemKindStruct = { fg = "#E90064" }
        hl.CmpItemKindEvent = { fg = "#31E1F7" }
        hl.CmpItemKindOperator = { fg = "#aaafff" }
        hl.CmpItemKindTypeParameter = { fg = "#aaafff" }

        hl.FlashMatch    = { fg = "White", bg = "#8B5DFF", bold = true }    -- blue highlight for search targets
        hl.FlashCurrent  = { fg = "Black", bg = "#E8B75F", bold = true }    -- orange for current match
        hl.FlashLabel    = { fg = "Black", bg = "#E90064", bold = true }    -- lavender for jump keys
        hl.FlashBackdrop = { fg = "#1c1c1c" }

        hl.TelescopeBorder  = { fg = "#7a3ba8", bg = "NONE", bold = true }
        -- hl.TelescopeNormal = { fg = "#aaafff", bg = "NONE" }
        hl.TelescopeNormal = { fg = "#b0a0ff", bg = "NONE" }
        hl.TelescopePromptBorder = { fg = "#E90064", bg = "NONE", bold = true }
        hl.TelescopePromptTitle = { fg = "#E90064", bg = "NONE", bold = true }
        hl.TelescopeResultsComment = { fg = "#aaafff", italic = true }
        hl.TelescopeSelection = { fg = "#E8B75F", bg = "NONE", bold = true }
        hl.TelescopeMatching = { fg = "#8B5DFF", bg = "NONE", bold = true }

        hl.Directory = { fg = "#aaafff"}

        hl.StartupASCII = { fg = "#8B5DFF", bold = true }  -- purple hydra header
        -- hl.StartupASCII = { fg = "#E90064", bold = true }  -- purple hydra header
        -- hl.StartupQuote = { fg = "#FFA500", bold = true }   -- orange quote
        hl.StartupQuote= { fg = "#E90064", bold = true }   -- orange quote
        hl.StartupTime = { fg = "#aaafff", bold = true }   -- orange quote

      end,
    })
    vim.cmd.colorscheme("tokyonight")
  end,
}
