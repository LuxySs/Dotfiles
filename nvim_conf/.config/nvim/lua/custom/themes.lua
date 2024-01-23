-- enable the themes you want to use by changing enabled = [false / true]

local themes = {
  {
    "catppuccin/nvim",
    enabled = false,
    event = "VeryLazy",
    name = "catppuccin",
    priority = 1000,
    opts = { -- transparent_background = true,},
    },
  },

  {
    "maxmx03/dracula.nvim",
    enabled = false,
    event = "VeryLazy",
    name = "dracula",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("dracula")
    end,
  },

  {
    "folke/tokyonight.nvim",
    enabled = false,
    event = "VeryLazy",
    name = "tokyonight",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight")
    end,
  },
}

return themes
