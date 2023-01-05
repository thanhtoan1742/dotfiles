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
        mlc.setup_handlers {
            function(server_name)
                require('lspconfig')[server_name].setup {}
            end,
        }

        -- require("neodev").setup()

        require("lspconfig").sumneko_lua.setup {}
        require("lspconfig").clangd.setup {}
        require("lspconfig").pyright.setup {}
        require("lspconfig").gopls.setup {}
    end

}
