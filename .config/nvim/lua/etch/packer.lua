vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -------------------- Telescope: fuzzy finder ------------------------------
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Treesitter: syntax coloring plugin
    use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})
    -- lsp-zero: language server
    use( {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    })
    -------------------- nvim-tree: nerdtree replacement ----------------------
    use({
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    })
    -------------------- vim-commentary: code commenting plugin ---------------
    use('tpope/vim-commentary')
    -------------------- kanagawa colorscheme ---------------------------------
    use('rebelot/kanagawa.nvim')
    -------------------- melange colorscheme ----------------------------------
    use('savq/melange')
    -------------------- everforest colorscheme -------------------------------
    use('sainnhe/everforest')
    -------------------- Zenburn colorscheme ----------------------------------
    use("phha/zenburn.nvim")
    -------------------- gruvbox colorscheme ----------------------------------
    use("sainnhe/gruvbox-material")
    -------------------- edge colorscheme -------------------------------------
    use("sainnhe/edge")
end)
