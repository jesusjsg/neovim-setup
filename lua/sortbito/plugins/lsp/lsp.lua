return {
  "mason-org/mason-lspconfig.nvim",
  opts = { ensure_installed = { "lua_ls", "ty", "ruff" } },
  dependencies = {
    { "mason-org/mason.nvim", opts = { opts } },
    "neovim/nvim-lspconfig",
  },
}
