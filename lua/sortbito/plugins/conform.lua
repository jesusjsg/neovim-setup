return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                python = { "ruff_format", "black" },
                lua = { "stylua" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        })
    end
}
