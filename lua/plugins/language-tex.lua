return {
  {
    -- VimTeX: A modern Vim and neovim filetype plugin for LaTeX files.
    "lervag/vimtex",
    -- opts = {
    --   -- vimtex_view_method = "zathura",
    --   -- vimtex_compiler_latexmk_engines = { _ = "-lualatex" }
    --   view_method = "zathura",
    --   compiler_latexmk_engines = { _ = "-lualatex" }
    -- }

    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      vim.api.nvim_create_autocmd({ "FileType" }, {
        group = vim.api.nvim_create_augroup("lazyvim_vimtex_conceal", { clear = true }),
        pattern = { "bib", "tex" },
        callback = function()
          vim.wo.conceallevel = 2
        end,
      })

      vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
      vim.g.vimtex_quickfix_method = vim.fn.executable("pplatex") == 1 and "pplatex" or "latexlog"

      -- CUSTOM --
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_compiler_latexmk_engines = { _ = "-lualatex" }
    end,
  }
}
