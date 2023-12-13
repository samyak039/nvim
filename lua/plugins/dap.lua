return {
  {
    -- Debug Adapter Protocol client implementation for Neovim
    "mfussenegger/nvim-dap",
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "python" }
    }
  }
}
