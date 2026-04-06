return {
	"saghen/blink.cmp",
	event = { "BufReadPre", "BufNewFile" },
	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	---
	opts = {
		completion = {
			accept = {
				auto_brackets = {
					enabled = false,
				},
			},
			menu = {
				border = "rounded",
				scrollbar = false,
				draw = {
					treesitter = { "lsp" },
					columns = { { "kind_icon" }, { "label", "label_description", gap = 1 } },
				},
			},
			documentation = {
				enabled = true,
				auto_show = false,
				window = {
					border = "rounded",
				},
			},
			ghost_text = {
				enabled = true,
			},
		},
		signature = {
			enabled = true,
			trigger = {},
			window = {
				border = "rounded",
				-- show_documentation = false,
			},
		},
		appearance = {
			kind_icons = {
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
			},
		},
		snippets = {
			preset = "default",
		},
		cmdline = {
			enabled = true,
			keymap = {
				preset = "cmdline",
			},
			completion = {
				list = { selection = { preselect = false } },
				menu = {
					auto_show = function(ctx)
						return vim.fn.getcmdtype() == ":"
					end,
				},
				ghost_text = { enabled = true },
			},
		},
		keymap = {
			preset = "default",
			-- ["<C-e>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-y>"] = { "select_and_accept", "fallback" },
			["<Tab>"] = { "select_and_accept", "fallback" },

			["<C-p>"] = { "select_prev", "fallback_to_mappings" },
			["<C-n>"] = { "select_next", "fallback_to_mappings" },

			["<C-b>"] = { "scroll_documentation_up", "fallback" },
			["<C-f>"] = { "scroll_documentation_down", "fallback" },

			["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
		},
	},
}
