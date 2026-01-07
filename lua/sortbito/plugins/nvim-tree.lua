return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netwr = 1
    vim.g.loaded_netwrPlugin = 1

    require("nvim-tree").setup({
      sort = { sorter = "case_sensitive" },
      renderer = { group_empty = true },
      filters = { dotfiles = true },
    })
    local keymap = vim.keymap.set

    keymap("n", "<leader>ee", "<cmd>NvimTreeOpen<CR>", { desc = "Open the tree" })
    keymap("n", "<leader>eq", "<cmd>NvimTreeClose<CR>", { desc = "Closes the tree" })
    keymap(
      "n",
      "<leader>ef",
      "<cmd>NvimTreeFindFile<CR>",
      { desc = "Change the cursor in the tree for the current bufname" }
    )
  end,
}
