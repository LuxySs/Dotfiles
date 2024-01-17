return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        size = 20,
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = true,
        shade_factor = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        direction = "float",
        close_on_exit = "true",
        shell = vim.o.shell,
        float_opts = {
            border = "curved",
            winblend = 0,
            highlights = {
                borders = "Normal",
                background = "Normal",
            },
        }
    }
}
