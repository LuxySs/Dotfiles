local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },

  -- Other plugins
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
      require "custom.configs.alpha"
    end,
  },

  {
    {
      "L3MON4D3/LuaSnip",
      lazy = false,
    },
    -- {
    --   "evesdropper/luasnip-latex-snippets.nvim",
    --   ft = { "tex", "latex" },
    -- },
  },

  {
    "max397574/better-escape.nvim", -- escape insert mod with jj without having delay
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "custom.configs.oil"
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    ft = { "md" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  {
    "nvim-neorg/neorg",
    ft = { "norg" },
    run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
      require "custom.configs.neorg"
    end,
  },

  {
    "lervag/vimtex",
    init = function() end,
    ft = { "tex" }, -- Specify the filetypes for which VimTeX should be enabled
  },
}

return plugins

-- All NvChad plugins are lazy-loaded by default
-- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
-- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
--
-- To disable a plugin, add enabled = false, under the plugin
-- {
--   "NvChad/nvim-colorizer.lua",
--   enabled = false
-- },
