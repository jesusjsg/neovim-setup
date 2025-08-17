return {
    "lewis6991/gitsigns.nvim",
    opts = function()
        vim.keymap.set("n", "<leader>uG", function()
            require("gitsigns").toggle_signs()
        end, { desc = "Toggle Git Signs" })
    end,
}
