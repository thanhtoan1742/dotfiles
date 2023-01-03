require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").sumneko_lua.setup {}

vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {noremap=true})
