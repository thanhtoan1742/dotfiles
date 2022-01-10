local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

cmd 'let mapleader = " "'
map('n', '<leader>ya', 'gg"+yG', {noremap = true})
map('n', '<leader>p', '"+p"', {noremap = true})

