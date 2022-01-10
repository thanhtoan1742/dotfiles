local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

require 'plugins'
require 'keymaps'

-- comment
require('Comment').setup()

-- nvim tree
require'nvim-tree'.setup {}
map('n', '<c-b>', '<cmd>NvimTreeToggle <cr>', {})


-- float terminal
opt.hidden = true
require('toggleterm').setup {
    direction = 'float',
}
map('n', '<c-t>', '<cmd>ToggleTerm <cr>', {})
map('t', '<c-t>', [[<c-\><c-n><cmd>ToggleTerm<cr>]], {})


-- auto pairs
require('nvim-autopairs').setup {}
-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({map_char = { tex = '' }}))
-- add a lisp filetype (wrap my-function), FYI: Hardcoded = { "clojure", "clojurescript", "fennel", "janet" }
cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"

