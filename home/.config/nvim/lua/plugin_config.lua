local map = vim.api.nvim_set_keymap

require('plugin')

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
vim.opt.hidden = true
require('toggleterm').setup {
    direction = 'float',
}
vim.keymap.set('n', '<c-t>', [[<cmd>ToggleTerm <cr>]], {noremap=true})
vim.keymap.set('t', '<c-t>', [[<c-\><c-n><cmd>ToggleTerm<cr>]], {noremap=true})


-- which key
require('which-key').setup()

-- lsp
vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<cr>', {noremap=true})
