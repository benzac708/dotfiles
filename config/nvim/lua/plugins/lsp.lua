return {
  -- LSP servers for your actual stack
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        lua_ls = {},
        bashls = {},
        yamlls = {},
        jsonls = {},
        marksman = {},
        dockerls = {},
        terraformls = {},
        gopls = {},
      },
    },
  },

  -- Mason: ensure all formatters/linters are installed
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "stylua",
        "lua-language-server",
        -- shell
        "shellcheck",
        "shfmt",
        "bash-language-server",
        -- python
        "pyright",
        "ruff",
        -- web/config
        "json-lsp",
        "yaml-language-server",
        "prettierd",
        -- markdown
        "marksman",
        -- infra
        "dockerfile-language-server",
        "terraform-ls",
        -- go
        "gopls",
      },
    },
  },

  -- Treesitter: parsers for your languages
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "dockerfile",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "terraform",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },
}
