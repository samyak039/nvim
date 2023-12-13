return {
  -- Create key bindings that stick.
  "folke/which-key.nvim",
  opts = {
    defaults = {
      ["<leader>h"] = { name = "+harpoon" },
      ["<localLeader>c"] = { name = "+leetcode" },
      ["<localLeader>d"] = { name = "+dart" },
      ["<localLeader>l"] = { name = "+vimtex" },
      ["<localLeader>p"] = { name = "+python" },
    },
  },
}
