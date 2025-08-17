return {
    "tpope/vim-fugitive",
    cmd = { "Git" },
    config = function()
        local function map(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, { desc = desc })
        end

        map("<leader>gs", "<cmd>Git<CR>", "Status")
        map("<leader>ga", "<cmd>Git add %<CR>", "Add current file")
        map("<leader>gc", "<cmd>Git commit<CR>", "Commit")
        map("<leader>gp", "<cmd>Git push<CR>", "Push")
        map("<leader>gr", "<cmd>Git rebase<CR>", "Rebase")
        map("<leader>gl", "<cmd>Git log<CR>", "Log")
    end,
}
