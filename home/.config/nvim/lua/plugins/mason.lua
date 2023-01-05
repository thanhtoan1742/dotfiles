return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "folke/neodev.nvim",
    },
    config = function()
        require("mason").setup()

        local mlc = require("mason-lspconfig")
        mlc.setup {
            ensure_installed = {
                "sumneko_lua",
                "pyright",
                "clangd",
                "gopls",
                "rust_analyzer"
            },
        }

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
        mlc.setup_handlers {
            function(server_name)
                require('lspconfig')[server_name].setup {
                    capabilities = capabilities
                }
            end,
        }

        -- require("neodev").setup()
    end

}
