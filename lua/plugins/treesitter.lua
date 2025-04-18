return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require('nvim-treesitter').setup({
            ensure_installed = { 'lua', 'python', 'javascript' },
            sync_install = true,
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            addittional_vim_regex_highlighting = false,
        }) 
    end
}
