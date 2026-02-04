return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  config = function()
    require("toggleterm").setup({
      direction = "vertical",
      size = 70,
      open_mapping = [[<C-\>]],
      auto_scroll = true,
      close_on_exit = true,
      start_in_insert = true,
    })
  end,
}
