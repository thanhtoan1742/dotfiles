-- Set up sane defaults and my personal defaults, no plugin required.


local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

-- general
opt.compatible = false
cmd 'filetype plugin indent on'

-- status line and command input line
opt.showmode = true
opt.showcmd = true

-- encoding
opt.encoding = 'utf-8'

-- characters at special places
opt.list = true
opt.listchars = "tab:→ ,trail:·"

-- split setting
opt.splitright = true
opt.splitbelow = true

-- sound
opt.belloff = 'all'

-- indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.expandtab = true

-- line number
opt.number = true
opt.relativenumber = true

-- wrap
opt.wrap = false
opt.breakindent = true
opt.linebreak = true

-- line limit marker
opt.colorcolumn = ''

-- scroll off
opt.scrolloff = 8

-- mouse
opt.mouse = 'a'

-- backup
opt.swapfile = false
opt.backup = false

-- automaticly read changed outside of nvim
opt.autoread = true

-- search
opt.incsearch = true
opt.hlsearch = false

-- highlight on yank
cmd [[au TextYankPost * silent! lua vim.highlight.on_yank()]]

cmd [[let mapleader=' ']]
cmd [[set laststatus=3]]

-- Y = yank end line
map('n', 'Y', 'y$', {noremap = true})
map('n', '<c-s>', ':w<cr>', {noremap = true})
map('n', '<leader>ya', 'gg"+yG', {noremap = true})

-- global statusline

