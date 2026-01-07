vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.tabstop = 4
vim.opt.swapfile = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 0 -- set to 0 to default to tabstop value
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', ':Explore<CR>')

vim.pack.add({
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/folke/tokyonight.nvim"}
})

require("nvim-autopairs")

require("tokyonight").setup({
    style = "night",
    transparent = true,
    terminal_colors = true
})

vim.cmd([[colorscheme tokyonight]])
