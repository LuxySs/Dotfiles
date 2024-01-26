-- enable the themes you want to use by changing enabled = [false / true]

local themes = {
  {
    "folke/tokyonight.nvim",
    enabled = true,
    event = "VeryLazy",
    name = "tokyonight",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme tokyonight")
    end,
  },

  {
    "catppuccin/nvim",
    enabled = true,
    event = "VeryLazy",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme catppuccin")
    end,
  },

  {
    "maxmx03/dracula.nvim",
    enabled = true,
    event = "VeryLazy",
    name = "dracula",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme dracula")
    end,
  },
}

return themes
