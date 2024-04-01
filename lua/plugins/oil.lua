vim.api.nvim_create_autocmd("FileType", {
  pattern = "oil",
  callback = function()
    vim.opt_local.colorcolumn = ""
  end,
})

return {
  {
    "stevearc/oil.nvim",
    opts = {},
    default_file_explorer = true,
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        use_default_keymaps = true,
        view_options = {
          show_hidden = true,
        },
      })

      vim.keymap.set("n", "<leader>fe", require("oil").toggle_float, { desc = "[F]ile [E]xplorer" })
    end,
  },
}
