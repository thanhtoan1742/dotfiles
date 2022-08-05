-- met up sane defaults and my personal defaults, no plugin required.

-- general
vim.opt.compatible = false
vim.cmd 'filetype plugin indent on'

-- status line and command input line
vim.opt.showmode = true
vim.opt.showcmd = true

-- encoding
vim.opt.encoding = 'utf-8'

-- characters at special places
vim.opt.list = true
-- after the arrow there is a space (important)
-- vim.opt.listchars = {tab = '\u{2192} ', trail = '\u{00b7}'}
vim.opt.listchars = {tab = '→ ', trail = '·'}

-- split setting
vim.opt.splitright = true
vim.opt.splitbelow = true

-- sound
vim.opt.belloff = 'all'

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

-- line number
vim.opt.number = true
vim.opt.relativenumber = true

-- wrap
vim.opt.wrap = false
vim.opt.breakindent = true
vim.opt.linebreak = true

-- line limit marker
vim.opt.colorcolumn = ''

-- scroll off
vim.opt.scrolloff = 8

-- mouse
vim.opt.mouse = 'a'

-- backup
vim.opt.swapfile = false
vim.opt.backup = false

-- automaticly read changed outside of nvim
vim.opt.autoread = true

-- search
vim.opt.incsearch = true
vim.opt.hlsearch = false

-- highlight on yank
vim.api.nvim_create_autocmd(
    {'TextYankPost'}, -- event
    {
        pattern = {"*"},
        command = [[silent! lua vim.highlight.on_yank()]],
        -- callback = vim.highlight.on_yank, -- does not work with callback (for highlight on yank specificly, other function works fine)
    }
)

-- leader
vim.g.mapleader = " "


-- Y = yank end line
vim.keymap.set('n', 'Y', 'y$', {noremap = true})
vim.keymap.set('n', '<c-s>', '<cmd>w<cr>', {noremap = true})
vim.keymap.set('n', '<leader>ya', 'gg"+yG', {noremap = true})

-- global statusline
vim.opt.laststatus = 3
