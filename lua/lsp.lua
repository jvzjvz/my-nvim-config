local M = {}

local lsp_plugins = {
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/mason-org/mason.nvim',
    'https://github.com/mason-org/mason-lspconfig.nvim',
    -- 'https://github.com/Saghen/blink.lib',
    { src = 'https://github.com/Saghen/blink.cmp', version = 'v1.9.1' },
}

vim.pack.add(lsp_plugins)

require('mason').setup()

-- local cmp = require('blink.cmp')
-- require('blink.cmp').build():pwait()
require('blink.cmp').setup {
    keymap = {
        preset = 'default',
        ['<C-n>'] = {
            function(cmp) return cmp.select_next({ on_ghost_text = true }) end,
            'fallback',
        },

        ['<C-p>'] = {
            function(cmp) return cmp.select_prev({ on_ghost_text = true }) end,
            'fallback',
        },
        -- ['<Tab>'] = { 'select_next', 'fallback' },
        -- ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<CR>'] = { 'accept', 'fallback' },
        ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
    },

    completion = {
        documentation = {
            auto_show = false,
        },

        menu = {
            border = 'rounded',
            auto_show = false
        },

        ghost_text = {
            enabled = true,
        },
    },

    sources = {
        default = { 'lsp', 'path', 'buffer' },
    },

    signature = {
        enabled = true,
    },

    appearance = {
        nerd_font_variant = 'mono'
    },

    fuzzy = {
        implementation = 'prefer_rust_with_warning',
        prebuilt_binaries = {
            -- force_version = 'v*'
            force_version = 'v1.9.1'
        }
    },
}

local capabilities = require('blink.cmp').get_lsp_capabilities()

local installed_lsps = {
    'clangd',
    'lua_ls',
    'ols',
    'gopls',
    'zls',
    'rust_analyzer',
    'ts_ls',
    'pylsp'
    -- 'serve_d'
}

require('mason-lspconfig').setup({
    ensure_installed = installed_lsps,
})

for _, server in ipairs(installed_lsps) do
    vim.lsp.config(server, {
        capabilities = capabilities,
    })
end

vim.lsp.config('clangd', {
    capabilities = capabilities,
    cmd = {
        'clangd',
        -- '--compile-commands-dir=build',
        '--background-index',
        '--query-driver=C:/msys64/mingw64/bin/gcc.exe'
    },
})

vim.lsp.config('pylsp', {
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = { 'E501', 'E305', 'E302' }
                }
            }
        }
    }
})

vim.lsp.config('lua_ls', {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = {
                checkThirdParty = false,
            },
        },
    },
})

-- Godot LSP (Godot editor must be running)
vim.lsp.config('godot', {
    capabilities = capabilities,
    cmd = vim.lsp.rpc.connect('127.0.0.1', 6005),
    filetypes = { 'gdscript', 'gdscript3' },
    root_markers = { 'project.godot' },
    single_file_support = false,
})

vim.lsp.enable(installed_lsps)
vim.lsp.enable('godot')

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover,
        vim.tbl_extend('force', opts, { desc = 'LSP hover' }))

        vim.keymap.set('n', 'gd', vim.lsp.buf.definition,
        vim.tbl_extend('force', opts, { desc = 'Go to definition' }))

        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration,
        vim.tbl_extend('force', opts, { desc = 'Go to declaration' }))

        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,
        vim.tbl_extend('force', opts, { desc = 'Go to implementation' }))

        vim.keymap.set('n', 'gr', vim.lsp.buf.references,
        vim.tbl_extend('force', opts, { desc = 'References' }))

        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,
        vim.tbl_extend('force', opts, { desc = 'Rename symbol' }))

        -- vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action,
        -- vim.tbl_extend('force', opts, { desc = 'Code action' }))

        vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float,
        vim.tbl_extend('force', opts, { desc = 'Line diagnostics' }))
    end,
})

return M
