local themes = {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = { -- transparent_background = true,},
    },
  },

  {
    "maxmx03/dracula.nvim",
    lazy = false,
    name = "dracula",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("dracula")
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    name = "tokyonight",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight")
    end,
  },
}

return themes
