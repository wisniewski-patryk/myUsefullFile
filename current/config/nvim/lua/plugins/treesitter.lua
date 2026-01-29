vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = "main" }
})

local ts = require('nvim-treesitter')

-- Define which languages you want
local ensure_installed = {
    "c_sharp",
    "lua",
    "vim",
    "vimdoc",
    "markdown"
}

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
