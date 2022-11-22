vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Setup nvim-cmp
local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
        ['<C-n>'] = cmp.mapping.select_next_item(select_opts),

        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),

        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    window = {
        documentation = cmp.config.window.bordered()
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp', keyword_length = 3 },
        { name = 'vsnip', keyword_length = 2 }, -- For vsnip users.
        { name = 'buffer' },
        { name = 'path' },
    }),
    formatting = {
        fields = {'menu', 'abbr', 'kind'}
    },
})


-- Setup mason so it can manage external tooling
require('mason').setup()

local servers = { "pyright", "sumneko_lua", "jsonls", "sqlls", "clangd", "marksman", "intelephense" }
require("mason-lspconfig").setup({
    ensure_installed = servers
})


local capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)
for _, lsp in ipairs(servers) do
    require('lspconfig')[lsp].setup{
        capabilities = capabilities,
    }
end
