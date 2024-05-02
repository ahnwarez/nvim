local function vscode_config()
	local vscode = require("vscode")
	local colors = require("vscode.colors").get_colors()

	vscode.setup({
		-- Enable transparent background
		transparent = true,

		-- Enable italic comment
		italic_comments = true,
		group_overrides = {
			-- CursorLine = { underline = true },
			WinBar = { bg = nil },

			-- set the color for `export`
			["@keyword"] = { fg = colors.vscPink, bg = "NONE" },
			-- set the color for `{}`
			["@punctuation.bracket"] = { fg = "#ffcc00", bg = "NONE" },
			["@punctuation.bracket.tsx"] = { fg = colors.vscPink, bg = "NONE" },

			-- set the color for `[]`
			["@punctuation.special"] = { fg = "#ffcc00", bg = "NONE" },
			["@lsp.typemod.variable.constant"] = { fg = colors.vscAccentBlue, bg = "NONE" },
			-- set the color for `const`
			["@keyword.javascript"] = { fg = colors.vscBlue, bg = "NONE" },
			["@keyword.typescript"] = { fg = colors.vscBlue, bg = "NONE" },

			["@type.tsx"] = { fg = colors.vscLightBlue, bg = "NONE" },
			["@operator.tsx"] = { fg = colors.vscBlue, bg = "NONE" },
			["@keyword.operator.typescript"] = { fg = colors.vscBlue, bg = "NONE" },

			-- `:` in `key: value`
			["@punctuation.delimiter.tsx"] = { fg = colors.vscLightBlue, bg = "NONE" },

			-- `<Tag />`
			["@tag.tsx"] = { fg = colors.vscBlueGreen, bg = "NONE" },
			["@tag"] = { fg = colors.vscBlueGreen, bg = "NONE" },

			-- `obj.value`
			["@lsp.type.namespace.typescriptreact"] = { fg = colors.vscBlueGreen, bg = "NONE" },

			-- `function`
			["@keyword.function.typescript"] = { fg = colors.vscBlue, bg = "NONE" },

			-- `namespace` `interface`
			["@keyword.type.typescript"] = { fg = colors.vscBlue, bg = "NONE" },

			-- `async funcion`
			["@keyword.coroutine.typescript"] = { fg = colors.vscBlue, bg = "NONE" },

			-- `? :` ternary operator
			["keyword.conditional.ternary.typescript"] = { fg = "#777777", bg = "NONE" },
		},
	})
	vscode.load()
	vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", {
		bg = colors.vscSelection,
		fg = colors.vscBack,
		bold = true,
		underline = true,
		italic = true,
	})
end

return {
	"Mofiqul/vscode.nvim", -- Vscode type theme
	lazy = false,
	priority = 1000,
	config = vscode_config,
}
