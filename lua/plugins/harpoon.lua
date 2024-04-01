return {
  {
    "ThePrimeagen/harpoon",
    lazy = true,
    config = function()
      local harpoon_ui = require("harpoon.ui")
      local harpoon_mark = require("harpoon.mark")

      -- Harpoon keybinds
      -- Open harpoon ui
      vim.keymap.set("n", "<leader>ho", harpoon_ui.toggle_quick_menu, { desc = "[H]arpoon [O]pen" })

      -- Add current file to harpoon
      vim.keymap.set("n", "<leader>ha", harpoon_mark.add_file, { desc = "[H]arpoon [A]dd" })

      -- Remove current file from harpoon
      vim.keymap.set("n", "<leader>hr", function()
        harpoon_mark.rm_file()
      end, { desc = "[H]arpoon [R]emove" })

      -- Remove all files from harpoon
      vim.keymap.set("n", "<leader>hc", function()
        harpoon_mark.clear_all()
      end, { desc = "[H]arpoon [C]lear" })

      -- Quickly jump to harpooned files
      vim.keymap.set("n", "<leader>1", function()
        harpoon_ui.nav_file(1)
      end, { desc = "[H]arpoon jump to [1]" })

      vim.keymap.set("n", "<leader>2", function()
        harpoon_ui.nav_file(2)
      end, { desc = "[H]arpoon jump to [2]" })

      vim.keymap.set("n", "<leader>3", function()
        harpoon_ui.nav_file(3)
      end, { desc = "[H]arpoon jump to [3]" })

      vim.keymap.set("n", "<leader>4", function()
        harpoon_ui.nav_file(4)
      end, { desc = "[H]arpoon jump to [4]" })

      vim.keymap.set("n", "<leader>5", function()
        harpoon_ui.nav_file(5)
      end, { desc = "[H]arpoon jump to [5]" })
    end,
  },
}
