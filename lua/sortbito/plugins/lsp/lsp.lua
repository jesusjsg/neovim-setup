return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },

  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lspconfig = require("lspconfig")

    vim.lsp.config("*", {
      capabilities = capabilities,
    })
  end,
}
