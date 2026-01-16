return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },

  opts = {
    keymap = { preset = "enter" },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    completion = {
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
    },
  },
  opts_extend = { "sources.default" },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-]>",
          clear_suggestion = "<C-c>",
          accept_word = "<C-[",
        },
      })
    end,
  },
}
