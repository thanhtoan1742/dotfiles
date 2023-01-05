local load_vscode = function()
    require 'default'
end

local load = function()
    require 'default'
    require 'colorscheme'
    require 'install_plugin'

    require 'plugin.lsp'
    require 'plugin.telescope'
    require 'plugin.treesitter'
    require 'plugin.dressing'
    -- require 'plugin.noice'
    -- require 'plugin.nvim-notify'
    require 'plugin.comment'
    require 'plugin.toggleterm'
    require 'plugin.which-key'
    require 'plugin.filetype'
end


if vim.g.vscode then
    load_vscode()
else
    load()
end
