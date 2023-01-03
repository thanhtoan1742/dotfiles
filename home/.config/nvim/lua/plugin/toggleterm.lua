vim.opt.hidden = true
require('toggleterm').setup {
    direction = 'float',
}
vim.keymap.set('n', '<c-t>', [[<cmd>ToggleTerm <cr>]], {noremap=true})
vim.keymap.set('t', '<c-t>', [[<c-\><c-n><cmd>ToggleTerm<cr>]], {noremap=true})

