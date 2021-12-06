local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

require 'plugins'

-- comment
require('Comment').setup()



-- float terminal
opt.hidden = true
require('toggleterm').setup {
    direction = 'float',
}
map('n', '<c-t>', ':ToggleTerm <cr>', {})
map('t', '<c-t>', [[<c-\><c-n>:ToggleTerm<cr>]], {})





