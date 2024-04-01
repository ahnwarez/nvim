--------------------------------------------------------------------------------
-- Markdown Previewer
--------------------------------------------------------------------------------

-- Use MarkdownPreview to view live changes in the browser

return {
	"iamcco/markdown-preview.nvim",
	ft = "markdown",
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	cmd = {
		"MarkdownPreviewToggle",
		"MarkdownPreview",
		"MarkdownPreviewStop",
	},
}
