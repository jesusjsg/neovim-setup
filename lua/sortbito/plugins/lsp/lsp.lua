return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.diagnostic.config({
      virtual_text = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })

    vim.lsp.enable("biome")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("ty")
  end,
}
