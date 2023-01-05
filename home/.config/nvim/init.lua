local load_vscode = function()
    require("default")
end

local load = function()
    require("default")
    require("bootstrap")

    require("lazy").setup("plugins", {
        change_detection = {
            enabled = false,
        }
    })
end


if vim.g.vscode then
    load_vscode()
else
    load()
end
