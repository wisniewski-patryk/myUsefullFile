vim.pack.add({
    { src = "https://github.com/seblyng/roslyn.nvim" }
})

local status, roslyn = pcall(require, "roslyn")

if status then
    roslyn.setup({
        -- Path to the directory containing Microsoft.CodeAnalysis.LanguageServer 
        -- If you have 'dotnet' in your PATH, the plugin usually finds the server automatically.
        -- Otherwise, specify the path to the executable here.
        -- path to vscode analiser $HOME/.vscode/extensions/ms-dotnettools.csharp-2.113.22-linux-x64/.roslyn/Microsoft.CodeAnalysis.LanguageServer
        exe = 'Microsoft.CodeAnalysis.LanguageServer',

        args = {
            '--logLevel=Information',
            '--extensionLogDirectory=' .. vim.fs.dirname(vim.lsp.get_log_path()),
        },

        -- Standard LSP capabilities (integration with nvim-cmp, etc.)
        config = {
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
            on_attach = function(client, bufnr)
                -- Your custom keybindings go here
                local opts = { buffer = bufnr }
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            end,
            settings = {
                ["csharp|background_analysis"] = {
                    dotnet_analyzer_diagnostics_scope = "fullSolution",
                    dotnet_compiler_diagnostics_scope = "fullSolution",
                },
            },
        },
    })
end
