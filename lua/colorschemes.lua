local C = {}

local colorschemes = {
    'https://github.com/rktjmp/lush.nvim', -- common dependency and for custom theme making
    {
        src = 'https://github.com/jvzjvz/gild.nvim',
        dependencies = {
            'https://github.com/rktjmp/lush.nvim',
        }
    },
    'https://github.com/jvzjvz/autumn_night.nvim',
    'https://github.com/jvzjvz/srcery-vim',
    'https://github.com/jvzjvz/gruvbox-darker.nvim',
    'https://github.com/wtfox/jellybeans.nvim',
    'https://github.com/harivansh-afk/cozybox.nvim',
    'https://github.com/neanias/everforest-nvim',
    -- {src = 'https://github.com/Everblush/nvim', name = 'everblush-main'},
    'https://github.com/sainnhe/gruvbox-material',
    'https://github.com/zenbones-theme/zenbones.nvim',
    -- 'https://github.com/Oniup/ignite.nvim',
    'https://github.com/deparr/tairiki.nvim',
    'https://github.com/metalelf0/kintsugi-nvim',
    'https://github.com/saeeedhany/parchment.nvim',
    'https://github.com/jackplus-xyz/binary.nvim',
    'https://github.com/drewxs/ash.nvim',
    -- 'https://github.com/amedoeyes/eyes.nvim',
    'https://github.com/mrpbennett/vault',
    'https://github.com/phha/zenburn.nvim',
    'https://github.com/cappyzawa/akari-nvim',
    'https://github.com/dybdeskarphet/gruvbox-minimal.nvim',
    'https://github.com/AlexvZyl/nordic.nvim',
    'https://github.com/Sly-Harvey/radium.nvim',
    'https://github.com/xeind/nightingale.nvim',
    'https://github.com/Mofiqul/vscode.nvim',
    'https://github.com/EdenEast/nightfox.nvim',
    -- 'https://github.com/marekh19/meowsoot.nvim',
    -- 'https://github.com/kotsuban/nekomi.nvim',
    -- 'https://github.com/ATTron/bebop.nvim',
    'https://github.com/catppuccin/nvim',
    'https://github.com/rebelot/kanagawa.nvim',
    'https://github.com/VyomJain6904/charcoal.nvim',
    -- 'https://github.com/Dich0tomy/oxocarbon-lua.nvim',
    -- 'https://github.com/chama-chomo/grail',

    'https://github.com/metalelf0/black-metal-theme-neovim',
    -- 'https://github.com/sudoscrawl/tokyo-dark.nvim',
    -- 'https://github.com/itsthomashere/grace.nvim',
    'https://github.com/AvengeMedia/base46',
    'https://github.com/thallada/farout.nvim',
    -- 'https://github.com/Verf/deepwhite.nvim',
    -- 'https://github.com/embark-theme/vim',
    -- 'https://github.com/oskarnurm/koda.nvim',
    'https://github.com/uhs-robert/oasis.nvim',
    'https://github.com/sedgholm/terracotta.nvim',
    'https://github.com/aidyak/tokusa',
    'https://github.com/jpwol/thorn.nvim',
    'https://github.com/YajanaRao/forestflower',
    'https://github.com/sample-usr/rakis.nvim',
    -- 'https://github.com/shrikecode/kyotonight.vim',
    'https://github.com/kyzabuilds/xeno.nvim',
    -- 'https://github.com/saran13raj/wheat-fox.nvim',
    'https://github.com/Nyvyme/naysayer.nvim',
    'https://github.com/ajdm-jakiur/fleury.nvim',
    'https://github.com/WTFox/luna.nvim',
    'https://github.com/folke/tokyonight.nvim',
    -- 'https://github.com/oonamo/ef-themes.nvim',
    'https://github.com/jvzjvz/zephyr-nvim',
    -- 'https://github.com/arturgoms/moonbow.nvim',
    -- 'https://github.com/tomstolarczuk/rider.nvim',
    'https://github.com/Shatur/neovim-ayu',
    'https://github.com/aadielpr/bono.nvim',
}

vim.pack.add(colorschemes)

local xeno = require('xeno')

xeno.color('caramel', '#E6A15C')
xeno.color('cinnamon', '#CD6A53')
xeno.color('cream', '#F1E3D3')
xeno.color('latte', '#D8B395')
xeno.color('mocha', '#A08066')
xeno.color('matcha', '#A3B18A')
xeno.color('chai', '#E9C46A')

xeno.theme('xeno-latte-express', {
    background = '#1A120B',
    accent = '#EADBC8',
    foreground = '#F5EFE6',
    properties = {
        contrast = 0.12,
        chroma = 0.05,
        lightness = 0.04,
        variation = 0.15,
    },
    highlights = {
        editor = {
            Normal = { fg = '@foreground.200' },
            LineNr = { fg = '@background.500' },
            CursorLineNr = { fg = '@accent.200', bold = true },
            Visual = { bg = xeno.opaque('@accent.500', 0.18) },
            CursorLine = { bg = xeno.opaque('@background.600', 0.05) },
            MatchParen = { fg = '@caramel.200', bold = true, underline = true },
        },
        syntax = {
            Comment = { fg = '@foreground.400', italic = true },
            Keyword = { fg = '@caramel.300' },
            Conditional = { fg = '@cinnamon.300' },
            Function = { fg = '@cream.200' },
            Type = { fg = '@matcha.300' },
            String = { fg = '@latte.300' },
            Number = { fg = '@chai.200' },
            Boolean = { fg = '@chai.200' },
            Variable = { fg = '@foreground.200' },
            Property = { fg = '@mocha.200' },
            ['@keyword'] = { link = 'Keyword' },
            ['@keyword.function'] = { link = 'Keyword' },
            ['@keyword.return'] = { link = 'Conditional' },
            ['@keyword.conditional'] = { link = 'Conditional' },
            ['@keyword.repeat'] = { link = 'Conditional' },
            ['@keyword.operator'] = { link = 'Operator' },
            ['@keyword.import'] = { fg = '@cinnamon.200' },
            ['@function'] = { link = 'Function' },
            ['@function.builtin'] = { fg = '@accent.200' },
            ['@function.method'] = { link = 'Function' },
            ['@function.macro'] = { fg = '@caramel.200' },
            ['@type'] = { link = 'Type' },
            ['@type.builtin'] = { fg = '@matcha.200' },
            ['@type.definition'] = { link = 'Type' },
            ['@string'] = { link = 'String' },
            ['@string.regex'] = { fg = '@cinnamon.200' },
            ['@string.escape'] = { fg = '@chai.200' },
            ['@number'] = { link = 'Number' },
            ['@boolean'] = { link = 'Boolean' },
            ['@variable'] = { link = 'Variable' },
            ['@variable.builtin'] = { fg = '@cinnamon.200' },
            ['@variable.parameter'] = { fg = '@foreground.100' },
            ['@property'] = { link = 'Property' },
            ['@operator'] = { link = 'Operator' },
            ['@punctuation'] = { link = 'Punctuation' },
            ['@punctuation.bracket'] = { link = 'Punctuation' },
            ['@punctuation.delimiter'] = { link = 'Punctuation' },
            ['@lsp.type.variable'] = { link = '@variable' },
            ['@lsp.type.property'] = { link = '@property' },
            ['@lsp.type.function'] = { link = '@function' },
            ['@lsp.type.method'] = { link = '@function.method' },
            ['@lsp.type.type'] = { link = '@type' },
            ['@lsp.type.keyword'] = { link = '@keyword' },
            ['@lsp.type.parameter'] = { link = '@variable.parameter' },
        },
    },
})

xeno.theme('xeno-sapphire', {
    background = '#1a2332',
    accent = '#4d8fd6',
    properties = {
        variation = 0.60,
        lightness = -0.10,
        chroma = 0.30,
    },
})

require('kanagawa').setup {
    colors = {
        palette = {
            sumiInk0 = '#111111',
            sumiInk1 = '#111111',
            sumiInk2 = '#111111',
            sumiInk3 = '#111111',
        },
        theme = {
            all = {
                ui = {
                    bg_gutter = 'none'
                }
            }
        }
    }
}

require('catppuccin').setup {
    color_overrides = {
        frappe = {
            base = '#0C0D12',
            mantle = '#0C0D12',
            crust = '#0C0D12',
        }
    }
}

require('everforest').setup {
    background = 'hard',
    ui_contrast = 'high',
    colours_override = function(palette)
        palette.bg0 = '#111111'
        palette.bg1 = '#2d353b'
        palette.bg2 = '#2d353b'
        palette.bg3 = '#2d353b'
        palette.bg4 = '#2d353b'
        palette.bg5 = '#2d353b'
    end
}

local binary_yellow = "#ffb400"
local binary_brown = "#9E8767"
local binary_offwhite = "#C0B19B"
require('binary').setup {
    colors = {
          bg = binary_offwhite,
        }
    }


require('gruvbox-minimal').setup {
-- contrast = 'high',
overrides = {
Normal = { bg = '#111111' }
}
}

require('akari').setup {
variant = 'dawn'
}

-- require('bebop').setup {
--   preset = 'faye'
-- }

-- require('onedark').setup {
--   style = 'darker',
--   highlights = {
--     -- Normal = { bg = '#000000'},
--     -- Normal = { bg = '#111111'},
--     -- bg1 = '#000000',
--     -- bg2 = '#000000',
--     -- bg3 = '#000000',
--     -- bg4 = '#000000',
--   }
-- }
--

vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_float_style = 'dim'
vim.g.gruvbox_material_colors_override = {
-- bg0 = { '#000000', '234' },
bg0 = { '#111111', '234' },
bg1 = { '#1d1d1d', '235' },
bg2 = { '#262626', '236' },
bg3 = { '#303030', '237' },
bg_visual = { '#3a3a3a', '239' },
}

require('nordic').setup {
    on_palette = function (palette)
        palette.gray0 = '#111111'
    end
}

require('thorn').setup {
    on_highlights = function (hl, pa)
        hl.Normal.bg = '#0C1812'
        hl.NormalNC.bg = '#0C1812'
        hl.SignColumn.bg = '#0C1812'
        hl.VertSplit.fg = '#0C1812'
        hl.VertSplit.bg = '#0C1812'
        hl.WinSeparator.fg = pa.bg
        hl.WinSeparator.bg = '#0C1812'
        -- hl.WinSeparator.fg = pa.green_1
    end
}

local ayu = require('ayu')
local ayu_colors = require('ayu.colors')
ayu.setup {
    overrides = {
        Visual = { reverse = true },
        Delimiter = { fg = ayu_colors.fg },
        ['@tag.delimiter'] = { fg = ayu_colors.fg },
        ['@punctuation'] = { fg = ayu_colors.fg },
    }
}

vim.cmd.colorscheme('bono')

return C
