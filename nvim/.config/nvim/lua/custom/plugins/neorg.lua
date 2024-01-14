return {
    "nvim-neorg/neorg",
    run = ":Neorg sync-parsers", -- This is the important bit!
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {},
                ["core.concealer"] = {
                    config = {
                        folds = true,
                        icon_preset = "varied"
                    },
                },
                ["core.summary"] = {},
                ["core.dirman"] = {
                    config = {
                        workspaces = {
                        }
                    }
                }
            }
        }
    end,
}
