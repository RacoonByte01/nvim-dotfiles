local opts = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
