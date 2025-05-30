local g = vim.g
local o = vim.o

o.termguicolors = true

-- indent width
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true -- TODO: disable for Makefile

-- basic editor settings
o.number = true
o.smartcase = true
o.ignorecase = true
o.hlsearch = true
o.incsearch = true
o.mouse = "a"
o.cursorline = true
-- o.cmdheight = 0

-- disable carzy error and warning hint
o.signcolumn = "no"
-- TODO: Find a way to cycle through errors/warnings

-- undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- remember 50 items in command history
o.history = 50

-- color themes
-- vim.highlight.create("Pmenu", { guibg = "None", guifg = "None" }, false)
o.termguicolors = true
vim.cmd("colorscheme lunaperche")

-- transparent backgruond
-- vim.highlight.create("Normal", { guibg = "None", guifg = "None" }, false)
vim.api.nvim_set_hl(0, "Normal", { bg = "None", fg = "None" })

-- vim.cmd("hi Normal guibg=none ctermbg=none")
-- vim.cmd.highlight("Normal guibg=none ctermbg=none")
-- vim.cmd("hi Normal gui=NONE guifg=NONE guibg=NONE cterm=NONE ctermfg=NONE ctermbg=NONE")

-- use OSC 52 to copy to system clipboard
g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
    ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
    ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
  },
}
