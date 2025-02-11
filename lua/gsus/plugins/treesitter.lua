return {
	"nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
    dependecies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        
        treesitter.setup({
            ensure_installed = { "php", "javascript", "html", "twig", "css", "typescript", "markdown", "vim", "lua" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            autotag = { enable = true },
            indent = { enable = true },
        })
    end
}
