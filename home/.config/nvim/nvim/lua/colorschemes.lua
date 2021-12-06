local cmd = vim.cmd
local opt = vim.opt

require 'plugins'

opt.termguicolors = true

cmd [[let ayucolor='dark']]
cmd [[colorscheme ayu]]
