return {
    'folke/snacks.nvim',
    config = function()
        local Snacks = require("snacks")

        Snacks.setup({
            dashboard = { enabled = true },
            win = { enabled = true },
            bigfile = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            image = {},
            indent = { enabled = true },
            picker = {
                win = {
                    input = {
                        keys = {
                            ["<Esc>"] = { "close", mode = { "n", "i" } },
                            ["J"] = { "preview_scroll_down", mode = { "n", "i" } },
                            ["K"] = { "preview_scroll_up", mode = { "n", "i" } },
                            ["H"] = { "preview_scroll_left", mode = { "n", "i" } },
                            ["L"] = { "preview_scroll_right", mode = { "n", "i" } },
                        },
                    },
                },
                layout = {
                    preset = "telescope",
                },
            },
            lazygit = { enabled = true },
        })
        vim.keymap.set('n', '<leader>ff', function()
            Snacks.picker.files()
        end, { desc = "Find Files" })
        vim.keymap.set('n', '<leader>fb', function() Snacks.picker.buffers() end, { desc = "Find Buffers" })
        vim.keymap.set('n', '<leader>fg', function() Snacks.picker.grep() end, { desc = "Find Grep" })
        vim.keymap.set('n', '<leader>fb', function() Snacks.picker.buffers() end, { desc = "Find Buffers" })
    end,
}
