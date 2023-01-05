return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
    },
    config = function()
        local cmp = require("cmp")
        local snip = require("luasnip")
        cmp.setup {
            sources = {
                {name = 'nvim_lsp', max_item_count = 20},
                {name = 'buffer', max_item_count = 5},
                {name = 'path', max_item_count = 5},
            },
            mapping = {
                ['<c-j>'] = cmp.mapping(
                function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif snip.jumpable(1) then
                        snip.jump(1)
                    else
                        fallback();
                    end
                end,
                { "i", "s" }
                ),
                ['<c-k>'] = cmp.mapping(
                function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif snip.jumpable(-1) then
                        snip.jump(-1)
                    else
                        fallback();
                    end
                end,
                { "i", "s" }
                ),
                ['<c-l>'] = cmp.mapping.confirm({select = true}),
                ['<c-h>'] = cmp.mapping.abort(),
            },
            snippet = {
                expand = function(args) snip.lsp_expand(args.body) end,
            }
        }
        vim.keymap.set("i", "c-l", cmp.complete, {noremap = true})
    end
}
