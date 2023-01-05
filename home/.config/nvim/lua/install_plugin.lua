local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_installed = ensure_packer()

local install_plugins = function(use)
    use 'wbthomason/packer.nvim'
    -- ui
    use 'MunifTanjim/nui.nvim'
    use 'rcarriga/nvim-notify'
    use 'stevearc/dressing.nvim'
    use 'folke/noice.nvim'
    -- treesitter for syntax highlight and some commands
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }
    -- telescope: preview file, fuzzy search, file browser
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'nvim-telescope/telescope-ui-select.nvim'
    -- lsp
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'folke/neodev.nvim',
    }
    -- new motion
    use 'tpope/vim-surround'
    -- comment
    use 'numToStr/Comment.nvim'
    -- auto end
    use 'tpope/vim-endwise'
    use 'jiangmiao/auto-pairs'
    -- float terminal
    use "akinsho/toggleterm.nvim"
    -- preview for subsitute command
    use 'markonm/traces.vim'
    -- show helper on key
    use 'folke/which-key.nvim'
    -- colorschemes
    use 'ayu-theme/ayu-vim'
    -- ftdedect
    use 'nathom/filetype.nvim'
    -- SILE syntax highlight
    use 'sile-typesetter/vim-sile'

    if packer_installed then
        require('packer').sync()
    end
end


return require('packer').startup { install_plugins }
