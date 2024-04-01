return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- open lazygit
    vim.api.nvim_set_keymap(
      "n",
      "<leader>gl",
      "<cmd>LazyGit<cr>",
      { noremap = true, silent = true, desc = "Open lazygit" }
    )
  end,
}
