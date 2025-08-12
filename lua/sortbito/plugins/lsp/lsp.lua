return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        local mason_lspconfig = require('mason-lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')

        vim.diagnostic.config({
            virtual_text = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true
        })

        local capabilities = cmp_nvim_lsp.default_capabilities()

        mason_lspconfig.setup({
            ensure_installed = { 'lua_ls', 'pyright', 'ts_ls' },
            handlers = {
                function(server_name)
                    lspconfig[server_name].setup({
                        capabilities = capabilities
                    })
                end
            }
        })
    end
}
