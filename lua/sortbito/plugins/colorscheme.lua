return {
    "folke/tokyonight.nvim",
    style = "night",
    config = function()
        require("tokyonight").setup({
            style = "night",
            on_colors = function(colors)
                colors.bg = "#000000"
            end,
            on_highlights = function(hl, c)
                hl.Normal = { bg = c.bg, fg = c.fg }

                hl.NvimTreeNormal = { bg = c.bg, fg = c.fg }
                hl.NvimTreeNormalNC = { bg = c.bg, fg = c.fg }
                hl.NvimTreeEndOfBuffer = { bg = c.bg, fg = c.fg }
            end
        })
        vim.cmd("colorscheme tokyonight-night")
    end
}
