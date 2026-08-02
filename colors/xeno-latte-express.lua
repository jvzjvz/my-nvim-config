require("xeno").setup({
  background = "#1A120B",
  accent = "#EADBC8",
  properties = {
    contrast = 0.1,
    variation = 0.1,
    chroma = 0.1,
    lightness = 0.0,
  },
  transparent = false,
  foreground = "#F5EFE6",
  _custom_colors = {
    chai = "#E9C46A",
    cinnamon = "#CD6A53",
    latte = "#D8B395",
    mocha = "#A08066",
    caramel = "#E6A15C",
    cream = "#F1E3D3",
    matcha = "#A3B18A"
  },
  highlights = {
    editor = {
      Visual = {
        bg = {
          opacity = 0.18,
          __xeno_opaque = true,
          fg = "@accent.500"
        }
      },
      CursorLine = {
        bg = {
          opacity = 0.05,
          __xeno_opaque = true,
          fg = "@background.600"
        }
      },
      LineNr = {
        fg = "@background.500"
      },
      MatchParen = {
        bold = true,
        fg = "@caramel.200",
        underline = true
      },
      CursorLineNr = {
        fg = "@accent.200",
        bold = true
      },
      Normal = {
        fg = "@foreground.200"
      }
    },
    syntax = {
      Comment = {
        fg = "@foreground.400",
        italic = true
      },
      Keyword = {
        fg = "@caramel.300"
      },
      ["@lsp.type.parameter"] = {
        link = "@variable.parameter"
      },
      Conditional = {
        fg = "@cinnamon.300"
      },
      ["@punctuation.bracket"] = {
        link = "Punctuation"
      },
      Function = {
        fg = "@cream.200"
      },
      ["@keyword.operator"] = {
        link = "Operator"
      },
      Type = {
        fg = "@matcha.300"
      },
      ["@keyword.repeat"] = {
        link = "Conditional"
      },
      String = {
        fg = "@latte.300"
      },
      ["@variable.builtin"] = {
        fg = "@cinnamon.200"
      },
      Number = {
        fg = "@chai.200"
      },
      ["@operator"] = {
        link = "Operator"
      },
      ["@property"] = {
        link = "Property"
      },
      Variable = {
        fg = "@foreground.200"
      },
      Property = {
        fg = "@mocha.200"
      },
      ["@variable"] = {
        link = "Variable"
      },
      ["@keyword"] = {
        link = "Keyword"
      },
      ["@punctuation.delimiter"] = {
        link = "Punctuation"
      },
      ["@lsp.type.variable"] = {
        link = "@variable"
      },
      ["@keyword.return"] = {
        link = "Conditional"
      },
      ["@lsp.type.function"] = {
        link = "@function"
      },
      ["@lsp.type.method"] = {
        link = "@function.method"
      },
      ["@lsp.type.type"] = {
        link = "@type"
      },
      ["@lsp.type.keyword"] = {
        link = "@keyword"
      },
      ["@keyword.import"] = {
        fg = "@cinnamon.200"
      },
      ["@variable.parameter"] = {
        fg = "@foreground.100"
      },
      ["@function"] = {
        link = "Function"
      },
      ["@function.builtin"] = {
        fg = "@accent.200"
      },
      ["@function.method"] = {
        link = "Function"
      },
      ["@function.macro"] = {
        fg = "@caramel.200"
      },
      ["@type"] = {
        link = "Type"
      },
      ["@type.builtin"] = {
        fg = "@matcha.200"
      },
      ["@punctuation"] = {
        link = "Punctuation"
      },
      ["@type.definition"] = {
        link = "Type"
      },
      ["@string"] = {
        link = "String"
      },
      ["@string.regex"] = {
        fg = "@cinnamon.200"
      },
      ["@string.escape"] = {
        fg = "@chai.200"
      },
      ["@number"] = {
        link = "Number"
      },
      ["@boolean"] = {
        link = "Boolean"
      },
      Boolean = {
        fg = "@chai.200"
      },
      ["@lsp.type.property"] = {
        link = "@property"
      },
      ["@keyword.function"] = {
        link = "Keyword"
      },
      ["@keyword.conditional"] = {
        link = "Conditional"
      }
    }
  },
})
vim.g.colors_name = "xeno-latte-express"
