return {
	"folke/tokyonight.nvim",
	-- event = "VeryLazy",
	priority = 999,
	opts = {},
	config = function()
		local colors = {
			lavander = "#AAAFFF",
			deep_purple = "#7A3BA8",
			purple = "#8B5DFF",
			yellow = "#E8B75F",
			pink = "#FF3EA5",
			red = "#E90064",

			dark_blue = "#332FD0",
			cyan = "#31E1F7",
			soft_lavender = "#B0A0FF",
			dark_gray = "#1C1C1C",

      none = "NONE",
      white = "White",
      black = "Black"
		}

		require("tokyonight").setup({
			style = "night",
			transparent = true,
			on_highlights = function(hl)
				hl.BlinkCmpMenu = { bg = colors.none, fg = colors.lavander, bold = true }
				hl.BlinkCmpMenuBorder = { bg = colors.none, fg = colors.deep_purple }
				hl.BlinkCmpMenuSelection = { bg = colors.none, fg = colors.yellow, bold = true }
				hl.BlinkCmpLabel = { bg = colors.none, fg = colors.lavander, bold = true }
				hl.BlinkCmpLabelDeprecated = { bg = colors.none, fg = colors.lavander, bold = true }
				hl.BlinkCmpLabelMatch = { bg = colors.none, fg = colors.deep_purple, bold = true }
				hl.BlinkCmpLabelDetail = { bg = colors.none, fg = colors.deep_purple, bold = true }
				hl.BlinkCmpLabelDescription = { bg = colors.none, fg = colors.deep_purple, bold = true }
        hl.BlinkCmpDoc = { bg = colors.none, fg = colors.lavander, bold = true }
				hl.BlinkCmpDocBorder = { bg = colors.none, fg = colors.deep_purple }
				hl.BlinkCmpDocSeparator = { bg = colors.none, fg = colors.deep_purple }
				hl.BlinkCmpDocCursorLine = { bg = colors.none, fg = colors.yellow, bold = true}
        hl.BlinkCmpSignatureHelp = { bg = colors.none, fg = colors.lavander, bold = true }
        hl.BlinkCmpSignatureHelpBorder = { bg = colors.none, fg = colors.deep_purple }
        hl.BlinkCmpSignatureHelpActiveParameter = { bg = colors.none, fg = colors.yellow, bold = true}

				hl.BlinkCmpKindText = { fg = colors.lavander }
				hl.BlinkCmpKindMethod = { fg = colors.pink }
				hl.BlinkCmpKindFunction = { fg = colors.pink }
				hl.BlinkCmpKindConstructor = { fg = colors.lavander }
				hl.BlinkCmpKindField = { fg = colors.purple }
				hl.BlinkCmpKindVariable = { fg = colors.purple }
				hl.BlinkCmpKindClass = { fg = colors.red }
				hl.BlinkCmpKindInterface = { fg = colors.lavander }
				hl.BlinkCmpKindModule = { fg = colors.red }
				hl.BlinkCmpKindProperty = { fg = colors.purple }
				hl.BlinkCmpKindUnit = { fg = colors.dark_blue }
				hl.BlinkCmpKindValue = { fg = colors.dark_blue }
				hl.BlinkCmpKindEnum = { fg = colors.red }
				hl.BlinkCmpKindKeyword = { fg = colors.purple }
				hl.BlinkCmpKindSnippet = { fg = colors.lavander }
				hl.BlinkCmpKindColor = { fg = colors.lavander }
				hl.BlinkCmpKindFile = { fg = colors.lavander }
				hl.BlinkCmpKindReference = { fg = colors.lavander }
				hl.BlinkCmpKindFolder = { fg = colors.lavander }
				hl.BlinkCmpKindEnumMember = { fg = colors.red }
				hl.BlinkCmpKindConstant = { fg = colors.red }
				hl.BlinkCmpKindStruct = { fg = colors.red }
				hl.BlinkCmpKindEvent = { fg = colors.cyan }
				hl.BlinkCmpKindOperator = { fg = colors.lavander }
				hl.BlinkCmpKindTypeParameter = { fg = colors.lavander }

        --- Flash
				hl.FlashMatch = { fg = colors.white, bg = colors.purple, bold = true } -- blue highlight for search targets
				hl.FlashCurrent = { fg = colors.black, bg = colors.yellow, bold = true } -- orange for current match
				hl.FlashLabel = { fg = colors.black, bg = colors.red, bold = true } -- lavender for jump keys
				hl.FlashBackdrop = { fg = colors.dark_gray }

        --- Telescope
				hl.TelescopeBorder = { fg = colors.deep_purple, bg = "NONE", bold = true }
				hl.TelescopeNormal = { fg = colors.soft_lavender, bg = "NONE" }
				hl.TelescopePromptBorder = { fg = colors.red, bg = colors.none, bold = true }
				hl.TelescopePromptTitle = { fg = colors.red, bg = colors.none, bold = true }
				hl.TelescopeResultsComment = { fg = colors.lavander, italic = true }
				hl.TelescopeSelection = { fg = colors.yellow, bg = colors.none, bold = true }
				hl.TelescopeMatching = { fg = colors.purple, bg = colors.none, bold = true }

        -- STARTUP
				hl.StartupASCII = { fg = colors.purple, bold = true }
				hl.StartupQuote = { fg = colors.red, bold = true }
				hl.StartupTime = { fg = colors.lavander, bold = true }

        hl.Directory = { fg = colors.lavander }

			end,
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}
