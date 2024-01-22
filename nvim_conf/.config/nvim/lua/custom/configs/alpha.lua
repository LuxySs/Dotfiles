local alpha = require "alpha"
local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[                                                     ]],
  [[  ██████   █████ █████   █████ █████ ██████   ██████ ]],
  [[ ░░██████ ░░███ ░░███   ░░███ ░░███ ░░██████ ██████  ]],
  [[  ░███░███ ░███  ░███    ░███  ░███  ░███░█████░███  ]],
  [[  ░███░░███░███  ░███    ░███  ░███  ░███░░███ ░███  ]],
  [[  ░███ ░░██████  ░░███   ███   ░███  ░███ ░░░  ░███  ]],
  [[  ░███  ░░█████   ░░░█████░    ░███  ░███      ░███  ]],
  [[  █████  ░░█████    ░░███      █████ █████     █████ ]],
  [[ ░░░░░    ░░░░░      ░░░      ░░░░░ ░░░░░     ░░░░░  ]],
  [[ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ]],
}
dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("t", "  Explore", ":NvimTreeToggle<CR>"),
  dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
  dashboard.button("r", "󰈚  Recent Files", ":Telescope oldfiles<CR>"),
  dashboard.button("c", "  Colorscheme", ":Telescope colorscheme<CR>"),
  dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = "\nArch user here -> mind the smell"

dashboard.config.opts.noautocmd = true

vim.cmd [[autocmd User AlphaReady echo 'ready']]

alpha.setup(dashboard.opts)
