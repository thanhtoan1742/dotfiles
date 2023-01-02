local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

require('plugin')


-- treesitter for syntax highlight and some commands
require('nvim-treesitter.configs').setup {
    ensure_installed = {'c', 'cpp', 'go', 'python', 'lua',}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {'r'},
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    highlight = {
        enable = true,              -- false will disable the whole extension
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'zn',
            node_decremental = 'zj',
            node_incremental = 'zk',
            scope_incremental = 'zK',
        },
    },
    indent = {
        enable = false,
    },
    refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = false },
        smart_rename = {
            enable = true,
            keymaps = { smart_rename = 'grr', },
        },
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = 'gnd',
                list_definitions = 'gnD',
                list_definitions_toc = 'gO',
                -- goto_next_usage = "<a-*>",
                -- goto_previous_usage = "<a-#>",
            },
        },
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ['ib'] = '@block.inner',
                ['ab'] = '@block.inner',
                ['ic'] = '@class.inner',
                ['ac'] = '@class.inner',
                ['if'] = '@function.inner',
                ['af'] = '@function.inner',
            },
        },
    },
}


-- completion
local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require('cmp')
local snip = require('luasnip')
cmp.setup {
    sources = {
        {name = 'nvim_lsp', max_item_count = 10},
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
            { 'i', 's' }
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
            { 'i', 's' }
        ),
        ['<c-l>'] = cmp.mapping.confirm({select = true}),
        ['<c-h>'] = cmp.mapping.abort(),
    },
    snippet = {
        expand = function(args) snip.lsp_expand(args.body) end,
    }
}

map('n', 'gh', [[<cmd>lua vim.diagnostic.open_float()<cr>]], {noremap = true})

capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['clangd'].setup { capabilities = capabilities, }
require('lspconfig')['pyright'].setup { capabilities = capabilities, }
require('lspconfig')['gopls'].setup { capabilities = capabilities, }
