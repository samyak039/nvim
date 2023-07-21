-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Auto select virtualenv on Nvim open",
  pattern = "*",
  callback = function()
    local venv = vim.fn.findfile("Pipfile", vim.fn.getcwd() .. ";")

    require("notify")("VirtualEnv: " .. venv)

    if venv ~= "" then
      require("venv-selector").retrieve_from_cache()
    end
  end,
  once = true,
})
