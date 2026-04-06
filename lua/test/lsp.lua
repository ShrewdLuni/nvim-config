-- Diagnostic configuration
vim.diagnostic.config({
  virtual_text = {
    prefix = function(diagnostic)
      local icons = {
        [vim.diagnostic.severity.ERROR] = "E",
        [vim.diagnostic.severity.WARN] = "W",
        [vim.diagnostic.severity.INFO] = "I",
        [vim.diagnostic.severity.HINT] = "H",
      }
      return icons[diagnostic.severity] or "●"
    end,
  },
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- LSP keybindings on attach
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = event.buf, desc = desc })
    end

    map("gd", vim.lsp.buf.definition, "Go to Definition")
    map("gr", vim.lsp.buf.references, "Go to References")
    map("gI", vim.lsp.buf.implementation, "Go to Implementation")
    map("gy", vim.lsp.buf.type_definition, "Go to Type Definition")
    map("K", vim.lsp.buf.hover, "Hover Documentation")
    map("gK", vim.lsp.buf.signature_help, "Signature Help")
    map("<leader>rn", vim.lsp.buf.rename, "Rename")
    map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
    map("[d", function() vim.diagnostic.jump({ count = -1 }) end, "Previous Diagnostic")
    map("]d", function() vim.diagnostic.jump({ count = 1 }) end, "Next Diagnostic")
    map("<leader>e", vim.diagnostic.open_float, "Show Diagnostic")
  end,
})

-- Get capabilities from blink.cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("blink.cmp").get_lsp_capabilities())

-- Global LSP config (applies to all servers)
vim.lsp.config("*", {
  root_markers = { ".git" },
  capabilities = capabilities,
})

-- Lua

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})
vim.lsp.enable("lua_ls")

-- Python
vim.lsp.config("pyright", {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
        extraPaths = {"/Users/shrewd/Code/Projects/Chess/Core"}
      },
    },
  },
})
vim.lsp.enable("pyright")

-- TypeScript/JavaScript
vim.lsp.config("vtsls", {
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  settings = {
    typescript = {
      preferences = {
        importModuleSpecifierPreference = "non-relative",
      },
    },
    javascript = {
      preferences = {
        importModuleSpecifierPreference = "non-relative",
      },
    },
  },
})

-- C/C++
vim.lsp.config("clangd", {})
vim.lsp.enable("clangd")

-- Tailwind CSS
vim.lsp.config("tailwindcss", {})
vim.lsp.enable("tailwindcss")

-- CSS
vim.lsp.config("cssls", {})
vim.lsp.enable("cssls")

-- Emmet
vim.lsp.config("emmet_language_server", {})
vim.lsp.enable("emmet_language_server")

-- Docker
vim.lsp.config("dockerls", {})
vim.lsp.enable("dockerls")

-- Docker Compose
vim.lsp.config("docker_compose_language_service", {})
vim.lsp.enable("docker_compose_language_service")

-- SQL
vim.lsp.config("sqlls", {})
vim.lsp.enable("sqlls")

-- Swift (sourcekit)
vim.lsp.config("sourcekit", {})
vim.lsp.enable("sourcekit")
