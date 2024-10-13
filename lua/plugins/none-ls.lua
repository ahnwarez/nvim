return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.csharpier,
				null_ls.builtins.formatting.markdownlint,
				null_ls.builtins.diagnostics.markdownlint,
			},
		})

		-- format first then save
		vim.keymap.set("n", "<leader>fs", ":lua vim.lsp.buf.format()<ENTER>:w<CR>", { desc = "[F]ile [S]ave" })
		vim.keymap.set("n", "<leader>cf", ":lua vim.lsp.buf.format()<ENTER>", { desc = "[C]ode [F]ormat" })
	end,
}
