-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

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

vim.pack.add({
    -- theme
    { src = "https://github.com/folke/tokyonight.nvim" },
    -- icons
    { src = "https://github.com/nvim-mini/mini.icons" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    -- life improvments, like puting pair of brackets, showing available keys, etc.
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/folke/which-key.nvim" },
    -- dev tools - lsps, treesitters etc.
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

require("nvim-autopairs").setup({})

require("tokyonight").setup({
    style = "night",
    transparent = true,
    terminal_colors = true
})
vim.cmd([[colorscheme tokyonight]])

require("which-key").setup({
    opts = {
        preset = "helix"
    }
})

require("nvim-treesitter").setup({})

require("nvim-tree").setup({
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    -- view = {width=35,side="left"},
    renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
    on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
        vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
        vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open: Vertical Split'))
        vim.keymap.set('n', 'h', api.node.open.horizontal, opts('Open: Horizontal Split'))
    end,
})

-- Toggle nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
-- Focus nvim-tree
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { desc = "Focus File Explorer" })

