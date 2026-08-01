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
    caramel = "#E6A15C",
    cinnamon = "#CD6A53",
    mocha = "#A08066",
    cream = "#F1E3D3",
    matcha = "#A3B18A",
    latte = "#D8B395",
    chai = "#E9C46A"
  },
  highlights = {
    syntax = {
      Comment = {
        italic = true,
        fg = "@foreground.400"
      },
      Keyword = {
        fg = "@caramel.300"
      },
      Conditional = {
        fg = "@cinnamon.300"
      },
      Function = {
        fg = "@cream.200"
      },
      Type = {
        fg = "@matcha.300"
      },
      String = {
        fg = "@latte.300"
      },
      Number = {
        fg = "@chai.200"
      },
      Boolean = {
        fg = "@chai.200"
      },
      Variable = {
        fg = "@foreground.200"
      },
      Property = {
        fg = "@mocha.200"
      },
      ["@keyword"] = {
        link = "Keyword"
      },
      ["@keyword.function"] = {
        link = "Keyword"
      },
      ["@keyword.return"] = {
        link = "Conditional"
      },
      ["@keyword.conditional"] = {
        link = "Conditional"
      },
      ["@keyword.repeat"] = {
        link = "Conditional"
      },
      ["@keyword.operator"] = {
        link = "Operator"
      },
      ["@keyword.import"] = {
        fg = "@cinnamon.200"
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
      ["@variable"] = {
        link = "Variable"
      },
      ["@variable.builtin"] = {
        fg = "@cinnamon.200"
      },
      ["@variable.parameter"] = {
        fg = "@foreground.100"
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
      ["@lsp.type.parameter"] = {
        link = "@variable.parameter"
      },
      ["@lsp.type.function"] = {
        link = "@function"
      },
      ["@lsp.type.property"] = {
        link = "@property"
      },
      ["@lsp.type.variable"] = {
        link = "@variable"
      },
      ["@punctuation.delimiter"] = {
        link = "Punctuation"
      },
      ["@punctuation.bracket"] = {
        link = "Punctuation"
      },
      ["@punctuation"] = {
        link = "Punctuation"
      },
      ["@operator"] = {
        link = "Operator"
      },
      ["@property"] = {
        link = "Property"
      }
    },
    editor = {
      MatchParen = {
        fg = "@caramel.200",
        underline = true,
        bold = true
      },
      CursorLine = {
        bg = {
          fg = "@background.600",
          __xeno_opaque = true,
          opacity = 0.05
        }
      },
      Normal = {
        fg = "@foreground.200"
      },
      CursorLineNr = {
        bold = true,
        fg = "@accent.200"
      },
      Visual = {
        bg = {
          fg = "@accent.500",
          __xeno_opaque = true,
          opacity = 0.18
        }
      },
      LineNr = {
        fg = "@background.500"
      }
    }
  },
})
vim.g.colors_name = "xeno-latte-express"
