local overrides = require("custom.configs.overrides")
local programming_file_types = { "python", "c", "cpp", "rust" }

---@type NvPluginSpec[]
local plugins = {
  -- Import themes unrelated to NvChad
  require("custom.themes"),

  -- Very important plugins
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end, -- Override to setup mason-lspconfig
  },

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
      return require("custom.configs.null-ls")
    end,
  },

  { -- debugging
    {
      "rcarriga/nvim-dap-ui",
      event = "VeryLazy",
      dependencies = "mfussenegger/nvim-dap",
      config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
        dap.listeners.after.event_initialized["dapui_config"] = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
          dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
          dapui.close()
        end
      end,
    },
    {
      "jay-babu/mason-nvim-dap.nvim",
      event = "VeryLazy",
      dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
      },
      opts = {
        handlers = {},
      },
    },
    {
      "mfussenegger/nvim-dap",
      config = function(_, _)
        require("core.utils").load_mappings("dap")
      end,
    },
  },

  { -- Menu / Greeter
    "goolord/alpha-nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("custom.configs.alpha")
    end,
  },

  { -- File browser
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("custom.configs.oil")
    end,
  },

  { -- notes taking / scientific report
    {
      "iamcco/markdown-preview.nvim",
      ft = { "markdown" },
      build = function()
        vim.fn["mkdp#util#install"]()
      end,
    },

    {
      "nvim-neorg/neorg",
      ft = { "norg" },
      run = ":Neorg sync-parsers", -- This is the important bit!
      config = function()
        require("custom.configs.neorg")
      end,
    },

    {
      "lervag/vimtex",
      ft = { "tex" },
      init = function() end,
    },
  },

  -- Other plugins
  {
    "max397574/better-escape.nvim", -- escape insert mod with jj without having delay
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "simrat39/symbols-outline.nvim",
    ft = programming_file_types,
    config = function()
      require("custom.configs.symbols-outline")
    end,
  },

  { -- Better looking interface to type commands
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("noice").setup()
    end,
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
