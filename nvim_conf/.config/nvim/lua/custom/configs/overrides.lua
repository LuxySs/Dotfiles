local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "rust",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "latex",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    --"css-lsp",
    --"html-lsp",
    --"typescript-language-server",
    --"deno",
    --"prettierd",

    -- c/cpp
    "clangd",
    "clang-format",
    "codelldb",

    -- python
    "pyright",
    "ruff",
    "debugpy",

    -- rust
    "rust-analyzer",

    -- markdown
    "marksman",
    "prettierd",

    -- latex
    "latexindent",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
