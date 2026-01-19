vim.lsp.enable('csharp-ls')

vim.lsp.config('csharp-ls', {
  cmd = { "csharp-ls" },
  root_markers = { "*.sln", "*.csproj", ".git" },
  init_options = {
    AutomaticWorkspaceInit = true,
  }
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    
    -- Classic LSP mappings
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K',  vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    
    -- Enable completion (if using Neovim 0.11+ built-in completion)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end
  end,
})

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
