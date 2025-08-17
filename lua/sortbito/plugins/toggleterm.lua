return {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    config = function()
        require("toggleterm").setup({
            direction = "float",
            float_opts = {
                width = 100,
                height = 20,
                border = "curved",
                winblend = 3,
            }
        })
        vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>")
    end
}
