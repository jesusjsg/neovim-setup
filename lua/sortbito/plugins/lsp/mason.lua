return {
  "mason-org/mason.nvim",
  cmd = "Mason",
  build = ":MasonUpdate",
  opts_extend = { "ensure_installed" },
  opts = {
    ensure_installed = { "stylua", "ruff", "biome", "ty", "lua-language-server", "typescript-language-server" },
  },

  config = function(_, opts)
    local mason = require("mason")

    mason.setup(opts)
  end,
}
