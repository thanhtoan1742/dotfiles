return {
    "Shatur/neovim-ayu",
    -- default = 50, colorscheme got 100 so that they load first
    priority = 100,
    config = function()
        local ayu = require("ayu")
        ayu.setup {
            mirage = true,
        }
        ayu.colorscheme()
    end
}
