return {
    "goolord/alpha-nvim",
    config = function()
        local alpha = require 'alpha'
        local dashboard = require 'alpha.themes.dashboard'
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
            [[ ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ]]
        }
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("t", " Explore", ":Neotree toggle<CR>"),
            dashboard.button("b", " Buffers", ":Telescope buffers<CR>"),
            dashboard.button("c", " Colorscheme", ":Telescope colorscheme<CR>"),
            dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
        }
        _Gopts = {
            position = "center",
            hl = "Type",
            -- wrap = "overflow";
        }
        dashboard.section.footer.val = '\nArch user here -> mind the smell'

        dashboard.config.opts.noautocmd = false

        vim.cmd [[autocmd User AlphaReady echo 'ready']]

        alpha.setup(dashboard.opts)
    end
}
