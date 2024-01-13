return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    -- added by myself
    opts = {
        vim.keymap.set('n', '<leader>t', '<Cmd>Neotree toggle<CR>'),
        vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {}),
        window = {
            mappings = {},
        },
        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = true,
                hide_by_name = {
                    '.git',
                },
                never_show = {},
            },
        }
    }
}
