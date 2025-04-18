return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "tailwindcss",
          "remark_ls", -- markdown
          "html",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost" },
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.remark_ls.setup({})
      lspconfig.html.setup({})
      -- lspconfig.clangd.setup({})
      lspconfig.gopls.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
      vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Open Diagnostic" })
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diganostic message" })
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Nexts diganostic message" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definiton" })
      vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Documentation" })
      vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

      -- display a list of actions
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definiton" })
      vim.keymap.set("n", "<leader>ca", function()
        vim.lsp.buf.code_action({ context = { only = { "quickfix", "refactor", "source" } } })
      end, { desc = "Code Action" })

      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Goto Definition" })
      vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "Goto References" })
      vim.keymap.set("n", "gi", builtin.lsp_implementations, { desc = "Goto Implementation" })
      vim.keymap.set("n", "<leader>cD", builtin.lsp_type_definitions, { desc = "Type Definitions" })
      vim.keymap.set("n", "<leader>cs", builtin.lsp_document_symbols, { desc = "Document Symbols" })
      vim.keymap.set("n", "<leader>cw", builtin.lsp_dynamic_workspace_symbols, { desc = "Workspace Symbols" })
    end,
  },
}
