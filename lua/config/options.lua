-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = "-"

local opt = vim.opt

-- opt.colorcolumn = "80"      -- Mark line lenght at 80 columns
opt.cursorcolumn = true     -- Enable highlighting of the current column
opt.cursorline = true       -- Enable highlighting of the current column

-- opt.foldmethod = 'syntax'

-- local tabspaces = 4
-- opt.shiftwidth = tabspaces  -- Size of an indent
-- opt.softtabstop = tabspaces -- Number of spaces that a <Tab> counts for
-- opt.tabstop = tabspaces     -- Number of spaces tabs count for

local g = vim.g

g.python_host_prog = "/home/samyak/.local/share/pyenv/versions/neovim2/bin/python"
g.python3_host_prog = "/home/samyak/.local/share/pyenv/versions/neovim3/bin/python"
