-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- FileType specific WhichKey
-- https://github.com/folke/which-key.nvim/issues/71#issuecomment-841656048

vim.cmd(([[
autocmd FileType dart lua whichkeyDart()
autocmd FileType python lua whichkeyPython()
]]))

_G.whichkeyPython = function()
  local wk = require("which-key")
  local venv = require("venv-selector")
  wk.register({
    ["<leader>m"] = {
      name = "+local",
      ["v"] = { function() venv.retrieve_from_cache() end, "Python Last VirtualEnv" },
      ["V"] = { "<cmd>VenvSelect<cr>", "Python Select VirtualEnv" },
    },
  })
end

_G.whichkeyDart = function()
  local wk = require("which-key")
  local t = require("telescope")
  wk.register({
    ["<leader>m"] = {
      name = "+local",
      ["o"] = { "<cmd>FlutterOutlineToggle<cr>", "Flutter Outline" },
      ["t"] = { function() t.extensions.flutter.commands() end, "Flutter Tools" },
      ["v"] = { function() t.extensions.flutter.fvm() end, "Flutter Version" },
    }
  })
end
