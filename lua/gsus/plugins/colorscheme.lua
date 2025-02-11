return {
    "olimorris/onedarkpro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local theme = require("onedarkpro")

        theme.setup({
            plugins = {
                nvim_lsp = true
            },
            options = {
                cursorline = true
            }
        })
        vim.cmd("colorscheme onedark_dark")
    end
}
