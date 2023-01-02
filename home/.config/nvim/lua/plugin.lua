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
    -- UI
    use {
        'stevearc/dressing.nvim',
        disable = true,
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
    -- tabs
    use 'crispgm/nvim-tabline'
    -- preview for subsitute command
    use 'markonm/traces.vim'
    -- show helper on key
    use 'folke/which-key.nvim'
    -- file tree - file browser
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- telescope: preview file and fuzzy search
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    -- treesitter for syntax highlight and some commands
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }
    use 'nvim-treesitter/playground'
    use {
        'nvim-treesitter/nvim-treesitter-refactor',
        requires = { 'nvim-treesitter/nvim-treesitter' }
    }
    use {
        'nvim-treesitter/nvim-treesitter-textobjects',
        requires = { 'nvim-treesitter/nvim-treesitter' }
    }
    -- lsp
    use 'neovim/nvim-lspconfig'
    -- completion
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    -- colorschemes
    use 'ayu-theme/ayu-vim'
    use 'mangeshrex/uwu.vim'
    use 'bluz71/vim-moonfly-colors'
    -- ftdedect
    use 'nathom/filetype.nvim'
    -- SILE syntax highlight
    use 'sile-typesetter/vim-sile'

    if packer_installed then
        require('packer').sync()
    end
end


return require('packer').startup { install_plugins }
