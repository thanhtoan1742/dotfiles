local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

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


