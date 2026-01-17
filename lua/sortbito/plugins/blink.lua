return {
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
      "rafamadriz/friendly-snippets",
      {
        "supermaven-inc/supermaven-nvim",
        opts = {
          disable_inline_completion = false,
          disable_keymaps = false,
          keymaps = {
            accept_suggestion = "<C-]>",
            clear_suggestion = "<C-c>",
            accept_word = "<C-[",
          },
        },
      },
      { "huijiro/blink-cmp-supermaven" },
    },

    opts = {
      keymap = { preset = "enter" },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },

      completion = {
        accept = {
          auto_brackets = {
            enabled = true,
          },
        },
      },

      sources = {
        default = { "lsp", "path", "supermaven", "snippets", "buffer" },
        providers = {
          supermaven = {
            name = "supermaven",
            module = "blink-cmp-supermaven",
            async = true,
          },
        },
      },
    },
    config = function(_, opts)
      require("blink.cmp").setup(opts)

      if vim.lsp.config then
        vim.lsp.config("*", {
          capabilities = require("blink.cmp").get_lsp_capabilities(),
        })
      end
    end,
  },
}
