local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup()

local cmp = require('cmp')
local cmp_mappings = lsp.defaults.cmp_mappings({[" "] = cmp.mapping.complete()})
