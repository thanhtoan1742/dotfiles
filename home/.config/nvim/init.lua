require 'default'


-- Check if packer is installed. If not, install it
local ok, msg = pcall(require, "packer")
if not ok then
    print("[init.lua] packer.nvim not found, downloading packer.nvim...")
    local directory = string.format(
        "%s/site/pack/packer/start/", 
        vim.fn.stdpath("data")
    )

    vim.fn.mkdir(directory, "p")

    local out = vim.fn.system(
        string.format(
            "git clone %s %s", 
            "https://github.com/wbthomason/packer.nvim", 
            directory .. "/packer.nvim"
        )
    )

    print(out)
    print("[init.lua] Closing")
    vim.cmd([[qa]])
end

require 'plugin'
require 'function'
require 'colorscheme'
require 'language'
require 'plugin_config'
require 'telescope_config'
