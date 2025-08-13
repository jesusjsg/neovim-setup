return {
    'hrsh7th/nvim-cmp',
    version = false,
    event = 'InsertEnter',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        {
            "L3MON4D3/LuaSnip",

            version = "v2.*",
            build = "make install_jsregexp",
        },
    },
    config = function()
        local cmp = require('cmp')
        local luasnip = require('luasnip')
        local auto_select = true

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            auto_brackets = { 'lua', 'python' },
            completion = {
                completeopt = 'menu,menuone,noinsert' .. (auto_select and '' or ',noselect')
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(),
                ["<C-j>"] = cmp.mapping.select_next_item(),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = false }),

                ["<Tab>"] = cmp.mapping(function(fallback)
                    if luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'path' },
                { name = 'buffer' }
            }),
            window = {
                documentation = cmp.config.window.bordered(),
                completion = cmp.config.window.bordered(),
            },
        })
    end
}
