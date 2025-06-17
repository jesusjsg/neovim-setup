return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require('harpoon')
        local keymap = vim.keymap.set
        harpoon:setup()

        keymap('n', '<leader>rr', function() harpoon:list():add() end)
        keymap('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        keymap('n', '<C-h>', function() harpoon:list():select(1) end)
        keymap('n', '<C-j>', function() harpoon:list():select(2) end)
    end
}
