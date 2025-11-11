return {
    "folke/tokyonight.nvim",
    style = "night",
    config = function()
        require("tokyonight").setup({
            style = "night",
        })
        vim.cmd("colorscheme tokyonight-night")
    end
}
