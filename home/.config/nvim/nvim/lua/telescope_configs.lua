local map = vim.api.nvim_set_keymap

require 'plugins'

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<c-j>"] = "move_selection_next",
                ["<c-k>"] = "move_selection_previous",
                ["<c-l>"] = "select_vertical",
                ["<c-h>"] = "close",
                ["<c-p>"] = "close",
                ["<c-c>"] = "complete_tag",
                ["<c-n>"] = "preview_scrolling_down",
                ["<c-m>"] = "preview_scrolling_up",
            }
        }
    }
}

map('n', '<c-p>', '<cmd>Telescope find_files<cr>', {noremap = false})
map('n', '<c-p>p', '<cmd>Telescope find_files<cr>', {noremap = false})
map('n', '<c-p>g', '<cmd>Telescope grep_string<cr>', {noremap = false})
map('n', '<c-p>s', '<cmd>Telescope git_status<cr>', {noremap = false})
map('n', '<c-p>b', '<cmd>Telescope buffers<cr>', {noremap = false})
map('n', '<c-p>r', '<cmd>Telescope registers<cr>', {noremap = false})
map('n', '<c-p>c', '<cmd>Telescope commands<cr>', {noremap = false})
