return {
  "mason-org/mason-lspconfig.nvim",
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "lua_ls",
      "pyright",
      "vtsls",
      "clangd",
      "tailwindcss",
      "cssls",
      "emmet_language_server",
      "dockerls",
      "docker_compose_language_service",
      "sqlls",
      "sourcekit",
    },
    automatic_installation = true,
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    } },
    "neovim/nvim-lspconfig",
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      opts = {
        ensure_installed = {
          "biome",
          "ruff",
          "stylua",
          "selene",
          "prettierd",
          "prettier",
          "shfmt",
          "shellcheck",
          "clang-format",
          "swiftformat",
          "swiftlint",
          "sql-formatter",
          "sqlfluff",
          "hadolint",
          "yamllint",
        },
        auto_update = false,
        run_on_start = true,
      }
    }
  },
}
