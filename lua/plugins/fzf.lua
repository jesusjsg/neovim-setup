return {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local fzf_lua = require('fzf-lua')
        local keymap = vim.keymap.set

        keymap('n', '<leader>ff', fzf_lua.files, { desc = 'Find files' })
        keymap('n', '<leader>fw', fzf_lua.oldfiles, { desc = 'Find in the recent files' })
        keymap('n', '<leader>fe', fzf_lua.live_grep, { desc = 'Live grep in current project' })
    end

}
