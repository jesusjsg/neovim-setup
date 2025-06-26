return {
    'nvim-treesitter/nvim-treesitter',
    tag = 'v0.10.0',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "lua", "markdown", "python", "javascript", "html", "css" },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
