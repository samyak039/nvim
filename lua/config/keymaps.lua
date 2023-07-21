-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

-- Helper function to reduce bloat
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>bX", "<cmd>BufferLineCloseOthers<cr>", { desc = "Delete other buffers" })

-- Move to window using the <ctrl> hjkl keys [vim-tmux-navigator]
-- stylua: ignore
map({ "n", "o", "v" }, "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to left window/pane", remap = true })
map({ "n", "o", "v" }, "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to lower window/pane", remap = true })
map({ "n", "o", "v" }, "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to upper window/pane", remap = true })
map({ "n", "o", "v" }, "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to right window/pane", remap = true })
map({ "n", "o", "v" }, "<C-Bslash>", "<cmd>TmuxNavigatePrevious<cr>",
  { desc = "Go to previous window/pane", remap = true })
