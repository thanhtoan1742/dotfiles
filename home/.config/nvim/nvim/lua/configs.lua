local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

require 'plugins'

-- comment
require('Comment').setup()

-- override ftdetect
require('filetype').setup {
    overrides = {
        extensions = {
            sil = 'sile',
        },
    },
}


-- float terminal
opt.hidden = true
require('toggleterm').setup {
    direction = 'float',
}
map('n', '<c-t>', ':ToggleTerm <cr>', {})
map('t', '<c-t>', [[<c-\><c-n>:ToggleTerm<cr>]], {})


-- which key
require('which-key').setup {}


-- file browser
require("nvim-tree").setup()


-- tabs
-- require('tabline').setup()

-- lsp
map('n', '<leader>r', ':lua vim.lsp.buf.rename()<cr>', {noremap=true})
