local telescope = require 'telescope'
local builtin = require 'telescope.builtin'

telescope.load_extension 'file_browser'
telescope.load_extension 'ui-select'

telescope.setup {
    defaults = {
        layout_config =  {
            prompt_position = "top",
        },
        sorting_strategy = "ascending",
        mappings = {
            i = {
                ['<c-j>'] = 'move_selection_next',
                ['<c-k>'] = 'move_selection_previous',
                ['<c-l>'] = 'select_vertical',
                ['<c-h>'] = 'close',
                ['<c-p>'] = 'close',
                ['<c-c>'] = 'complete_tag',
                ['<c-n>'] = 'preview_scrolling_down',
                ['<c-m>'] = 'preview_scrolling_up',
            }
        },
    },
    extensions = {
        file_browser = {
            hijack_netrw = true,
        }
    },
}



vim.keymap.set('n', '<c-p>', builtin.find_files, {noremap = false})
vim.keymap.set('n', '<c-p>p', builtin.find_files, {noremap = false})
vim.keymap.set('n', '<c-p>f', telescope.extensions.file_browser.file_browser, {noremap = false})
vim.keymap.set('n', '<c-p>g', builtin.grep_string, {noremap = false})
vim.keymap.set('n', '<c-p>s', builtin.git_status, {noremap = false})
vim.keymap.set('n', '<c-p>b', builtin.buffers, {noremap = false})
vim.keymap.set('n', '<c-p>r', builtin.registers, {noremap = false})
vim.keymap.set('n', '<c-p>c', builtin.commands, {noremap = false})
