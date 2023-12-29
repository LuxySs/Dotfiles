vim.cmd('set expandtab')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')

vim.o.clipboard = 'unnamedplus'

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.wo.number = true

require("keymap")
