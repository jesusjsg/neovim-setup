return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "ConformInfo" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "biome", "biome-organize-imports" },
        typescript = { "biome", "biome-organize-imports" },
        python = { "ruff_format", "ruff_fix" },
        lua = { "stylua" },
        json = { "biome" },
        jsonc = { "biome" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    })
  end,
}
