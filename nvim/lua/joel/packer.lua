-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- themes
    use 'cpea2506/one_monokai.nvim'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- file management
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use ({
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason-lspconfig.nvim'
    use 'williamboman/mason.nvim'
    use ({
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "onsails/lspkind-nvim",
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip'
        }
    })
    use("williamboman/nvim-lsp-installer")

    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requrires = 'kyazdani42/nvim-web-devicons'
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        require = { 'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- git line highlighting
    use {
        'lewis6991/gitsigns.nvim'
    }

    -- util
    use { 'numToStr/Comment.nvim' }
    use { 'windwp/nvim-autopairs' }
end)

