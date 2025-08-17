return {
    "andweeb/presence.nvim",
    config = function()
        require("presence").setup({
            auto_update = true,
            neovim_image_text = "Neovim",
            main_image = "neovim",
            client_id = "766112555378671637",
            log_level = nil,
            debounce_timeout = 1000,
            enable_line_number = false,
            blacklist = {},
            buttons = true,
            file_assets = {},
            show_time = true,
        })
    end
}
