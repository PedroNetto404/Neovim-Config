return {{
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
},
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "csharp_ls",
          "tsserver",
          "jsonls",
          "html",
          "emmet_language_server",
          "diagnosticls",
          "cssls",
          "clangd",
          "eslint"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsconfig = require("lspconfig")

      lsconfig.lua_ls.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
      vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
    end
  }
}
