return {

    { 'numToStr/Comment.nvim', opts = {} },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    { 
		"catppuccin/nvim",
		name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme catppuccin")
        end
    },

    {
        "romgrk/doom-one.vim",
		name = "doom-one",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme doom-one")
        end
    },

    {
        "folke/tokyonight.nvim",
		name = "tokyonight",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme tokyonight")
        end
    },

    {
        "ellisonleao/gruvbox.nvim",
		name = "gruvbox",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme gruvbox")
        end
    },
    --
    
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    'folke/neodev.nvim', -- new

    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            
            'hrsh7th/cmp-nvim-lsp',
            
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },


    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' } 
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },


    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'tokyonight',
            })
        end,
    }

}
