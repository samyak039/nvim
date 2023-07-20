return {
  -- Nvim Treesitter configurations and abstraction layer
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- html/css
      "css",
      "html",

      -- lua
      "lua",
      "luadoc",

      -- python
      "htmldjango",
      "ninja",
      "python",
      "rst",
      "toml",

      -- misc
      "bash",
      "markdown",
      "markdown_inline",
      "regex",
    },
  },
}
