return {
    ----------------
    -- TREESITTER --
    ----------------
    {
        -- Nvim Treesitter configurations and abstraction layer
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, {
                    -- "htmldjango",
                    "ninja",
                    "python",
                    "rst",
                    "toml",
                })
                -- vim.treesitter.language.register('htmldjango', 'jinja')
            end
        end,
    },

    -----------
    -- MASON --
    -----------
    {
        -- Portable package manager for Neovim that runs everywhere Neovim runs.
        -- Easily install and manage LSP servers, DAP servers, linters, and
        -- formatters.
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "black",
                -- "blackd-client", FIXME:
                "debugpy",
                "djlint",
                "mypy",
                "pyright",
                "ruff",
                "ruff-lsp",
            },
        },
    },

    -------------
    -- NULL-LS --
    -------------
    {
        -- Use Neovim as a language server to inject LSP diagnostics, code actions,
        -- and more via Lua.
        "jose-elias-alvarez/null-ls.nvim",
        -- ft = { "html", "jinja", "python" },
        ft = { "python" },
        opts = function()
            local null_ls = require("null-ls")
            return {
                sources = {
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.diagnostics.djlint,
                    -- null_ls.builtins.formatting.blackd, FIXME:
                    null_ls.builtins.diagnostics.djlint,
                    null_ls.builtins.diagnostics.mypy,
                    null_ls.builtins.diagnostics.ruff,
                },
            }
        end,
    },

    --------------
    -- PACKAGES --
    --------------

    -- {
    --   -- jinja plugins for vim (syntax and indent)
    --   "lepture/vim-jinja",
    -- }
}
