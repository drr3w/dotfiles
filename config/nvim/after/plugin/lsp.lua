local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
    'gopls',
    'pylsp',
})

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({[" "] = cmp.mapping.complete()})

local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.pylint,
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                    vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})

local servers = { 'pylsp'}
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup({
        capabilities = capabilities, 
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        },
        filetypes = { '.py' },
    })
end

lsp.setup()
