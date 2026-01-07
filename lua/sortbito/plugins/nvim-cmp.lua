return {
  "hrsh7th/nvim-cmp",
  version = false,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = function()
    vim.lsp.config("*", {
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })

    vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

    local cmp = require("cmp")
    local defaults = require("cmp.config.default")()

    return {
      completion = {
        completeopt = "menu,menuone,noinsert,noselect",
        max_height = 10,
      },
      preselect = cmp.PreselectMode.None,
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }), { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }), { "i", "s" }),
        ["<C-CR>"] = cmp.mapping(function()
          if cmp.visible() then
            cmp.abort()
          end
        end, { "i", "s" }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "path" },
      }, {
        { name = "buffer" },
      }),
      formatting = {
        format = function(entry, item)
          local icons = {
            Text = " ",
            Method = "m ",
            Function = "f ",
            Constructor = "c ",
            Field = " ",
            Variable = "v ",
            Class = "C ",
            Interface = "I ",
            Module = "M ",
            Property = "p ",
            Unit = "u ",
            Value = "V ",
            Enum = "E ",
            Keyword = "k ",
            Snippet = "S ",
            Color = "🌈 ",
            File = "F ",
            Reference = "R ",
            Folder = "D ",
            EnumMember = "E ",
            Constant = "C ",
            Struct = "s ",
            Event = "E ",
            Operator = "O ",
            TypeParameter = "T ",
          }
          if icons[item.kind] then
            item.kind = icons[item.kind] .. item.kind
          end

          -- Truncar nombres largos
          local max_width = { abbr = 40, menu = 30 }
          for key, width in pairs(max_width) do
            if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
              item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
            end
          end

          return item
        end,
      },
      sorting = defaults.sorting,
    }
  end,
}
