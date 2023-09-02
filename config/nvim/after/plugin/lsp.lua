local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({[" "] = cmp.mapping.complete()})

local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.pylint,
  }
})

local servers = { 'pyright' }
for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
        on_attach = on_attach,
        flags = {
          debounce_text_changes = 150,
        }
    }
end
