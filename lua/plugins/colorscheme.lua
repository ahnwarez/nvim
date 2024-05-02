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

			["@keyword"] = { fg = colors.vscPink, bg = "NONE" },
			["typescriptBraces"] = { fg = colors.vscYellow, bg = "NONE" },
			["@punctuation.bracket"] = { fg = "#ffcc00", bg = "NONE" },
		},
	})
	vscode.load()
	local colors = require("vscode.colors")
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
