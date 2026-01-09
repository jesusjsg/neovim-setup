return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  version = false,
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "TSUpdate", "TSInstall", "TSLog", "TSUninstall" },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = { enable = true },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "yaml",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "python",
        "regex",
        "toml",
        "jsonc",
      },
    })
  end,
}
