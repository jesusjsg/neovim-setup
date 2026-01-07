return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        python = { "ruff_format", "ruff_fix" },
        lua = { "stylua" },
        json = { "prettier" },
        jsonc = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end,
}
