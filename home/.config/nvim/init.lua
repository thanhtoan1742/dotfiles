local load_vscode = function()
    require 'default'
end

local load = function()
    require 'default'
    require 'plugin'
    require 'function'
    require 'colorscheme'
    require 'language'
    require 'plugin_config'
    require 'telescope_config'
end


if vim.g.vscode then
    load_vscode()
else
    load()
end
