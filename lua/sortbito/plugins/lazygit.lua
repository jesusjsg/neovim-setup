return {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFiler" },
    dependencies = { "nvim-lua/plenary.nvim" },
    vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<CR>")
}
