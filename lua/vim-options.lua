vim.opt.tabstop = 2 -- number of spaces a tab counts for
vim.opt.softtabstop = 2 -- number of spaces a tab counts for when editing
vim.opt.expandtab = true -- use spaces instead of tabs

-- enabel auto indenting and set it to spaces
vim.opt.smartindent = true
vim.opt.shiftwidth = 2

-- enable smart indenting
vim.opt.breakindent = true

-- enable relative line numbers
vim.opt.nu = true -- display line numbers in the gutter
vim.opt.rnu = true -- display relative line numbers relative to the current line

-- enable mouse support
vim.opt.mouse = "a" -- enable mouse support

-- don't show the mode
vim.opt.showmode = false

-- enable increamental search
vim.opt.incsearch = true -- a visual indication of the search match as you type (very cool feature)
vim.o.hlsearch = false

-- disable line wrap
vim.o.wrap = false

-- show which line your coursor is on
vim.opt.cursorline = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 100
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true

-- Set colorscheme
vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- override the unammed register
vim.cmd("set clipboard+=unnamedplus")
vim.opt.clipboard = "unnamedplus,unnamed"

-- enable cursorline
-- a visual indication of the current line
vim.opt.cursorline = true


-- scroll by 8 lines when the cursor is 8 lines away from the top or bottom
vim.opt.scrolloff = 8

-- Place a column line
vim.opt.colorcolumn = "80"
vim.g.have_nerd_font = true
---------------------
-- Keybindings
---------------------

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = 'Show [D]iagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = 'Open [D]diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- save current buffer by pressing CTRL-S
vim.keymap.set("i", "<C-s>", "<C-o>:w<ENTER>")
vim.keymap.set("n", "<C-s>", ":w<ENTER>")

-- close neovim
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- close current buffer
vim.keymap.set("n", "<leader>bk", ":bdelete<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
vim.opt.fillchars = {eob = " "}