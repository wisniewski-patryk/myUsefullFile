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
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/akinsho/bufferline.nvim" },
})

require("nvim-autopairs").setup({
    options = {
        preset = "modern"
    }
})

require("tokyonight").setup({
    style = "night",
    transparent = true,
    terminal_colors = true
})
vim.cmd([[colorscheme tokyonight]])

require("which-key").setup({

})

local ts = require('nvim-treesitter')

-- Define which languages you want
local ensure_installed = { "c_sharp", "lua", "vim", "vimdoc", "markdown" }

-- Check what is already installed to avoid redundant compilations
local installed = ts.get_installed()
for _, lang in ipairs(ensure_installed) do
  if not vim.list_contains(installed, lang) then
    ts.install(lang)
  end
end

-- 3. Enable Highlighting and Indentation
-- We use an autocommand to trigger Tree-sitter when opening C# files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cs" }, -- filetype for C#
  callback = function()
    -- Start Treesitter highlighting
    vim.treesitter.start()
    
    -- Enable Treesitter-based indentation
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "md" },
    callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
})

require("nvim-tree").setup({
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    view = {width=35,side="left"},
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

require("bufferline").setup({
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer", -- Text shown above the offset
                text_align = "left",    -- "left" | "center" | "right"
                separator = true        -- Adds a vertical line between offset and tabs
            },
        },
        indicator = {
            icon = '📌', 
            style = 'icon',
        },
    -- Other options...
    diagnostics = "nvim_lsp",
    }
})
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle Pin" })
vim.keymap.set('n', '<leader>bn', ':bn<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<leader>bN', ':bp<CR>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '<leader>bx', ':bp|bd #<CR>', { desc = 'Close Buffer' })





