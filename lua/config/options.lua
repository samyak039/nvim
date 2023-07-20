-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

local tabspaces = 4

opt.colorcolumn = "80"      -- Mark line lenght at 80 columns
opt.shiftwidth = tabspaces  -- Size of an indent
opt.softtabstop = tabspaces -- Number of spaces that a <Tab> counts for
opt.tabstop = tabspaces     -- Number of spaces tabs count for
