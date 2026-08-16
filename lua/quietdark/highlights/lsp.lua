local M = {}

function M.get(c)
  return {
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warn },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticOk = { fg = c.ok },

    DiagnosticUnderlineError = { sp = c.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.warn, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.hint, undercurl = true },
    DiagnosticUnderlineOk = { sp = c.ok, undercurl = true },

    DiagnosticVirtualTextError = { fg = c.red, bg = c.diff_delete },
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = c.search },
    DiagnosticVirtualTextInfo = { fg = c.cyan, bg = c.bg2 },
    DiagnosticVirtualTextHint = { fg = c.blue, bg = c.bg2 },
    DiagnosticVirtualTextOk = { fg = c.green, bg = c.diff_add },

    DiagnosticVirtualLinesError = { fg = c.red },
    DiagnosticVirtualLinesWarn = { fg = c.yellow },
    DiagnosticVirtualLinesInfo = { fg = c.cyan },
    DiagnosticVirtualLinesHint = { fg = c.blue },
    DiagnosticVirtualLinesOk = { fg = c.green },

    DiagnosticFloatingError = { fg = c.red },
    DiagnosticFloatingWarn = { fg = c.yellow },
    DiagnosticFloatingInfo = { fg = c.cyan },
    DiagnosticFloatingHint = { fg = c.blue },
    DiagnosticFloatingOk = { fg = c.green },

    DiagnosticSignError = { fg = c.red },
    DiagnosticSignWarn = { fg = c.yellow },
    DiagnosticSignInfo = { fg = c.cyan },
    DiagnosticSignHint = { fg = c.blue },
    DiagnosticSignOk = { fg = c.green },

    DiagnosticDeprecated = { fg = c.overlay1, strikethrough = true },
    DiagnosticUnnecessary = { fg = c.overlay1 },

    LspCodeLens = { fg = c.overlay1, italic = true },
    LspCodeLensSeparator = { fg = c.overlay0 },
    LspInlayHint = { fg = c.overlay2, bg = c.bg1, italic = true },
    LspReferenceText = { bg = c.bg2 },
    LspReferenceRead = { bg = c.bg2 },
    LspReferenceWrite = { bg = c.bg3, underline = true },
    LspReferenceTarget = { bg = c.bg3, bold = true },
    LspSignatureActiveParameter = { fg = c.orange, bold = true, underline = true },
    SnippetTabstop = { bg = c.bg2 },
    SnippetTabstopActive = { bg = c.bg3, underline = true },

    -- Explicit semantic-token decisions. Neovim links many semantic token
    -- types to Tree-sitter already, so only the meaningful overrides live here.
    ['@lsp.type.enumMember'] = { fg = c.yellow },
    ['@lsp.type.variable'] = {},
    ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.function.builtin'] = { link = '@function.builtin' },
    ['@lsp.mod.deprecated'] = { strikethrough = true },
  }
end

return M
