local M = {}

local function styled(base, style)
  return vim.tbl_extend('force', base, style or {})
end

function M.get(c, opts)
  local comments = opts.styles.comments or {}
  local keywords = opts.styles.keywords or {}
  local functions = opts.styles.functions or {}
  local variables = opts.styles.variables or {}

  local kw = function(base)
    return styled(base, keywords)
  end

  local fn = function(base)
    return styled(base, functions)
  end

  local var = function(base)
    return styled(base, variables)
  end

  return {
    ['@variable'] = var({ fg = c.fg }),
    ['@variable.builtin'] = var({ fg = c.red, italic = true }),
    ['@variable.parameter'] = var({ fg = c.subtext1 }),
    ['@variable.parameter.builtin'] = var({ fg = c.pink, italic = true }),
    ['@variable.member'] = var({ fg = c.cyan }),

    ['@constant'] = { fg = c.yellow },
    ['@constant.builtin'] = { fg = c.orange, bold = true },
    ['@constant.macro'] = { fg = c.pink },

    ['@module'] = { fg = c.cyan },
    ['@module.builtin'] = { fg = c.cyan, italic = true },
    ['@label'] = { fg = c.lavender },

    ['@string'] = { fg = c.green },
    ['@string.documentation'] = { fg = c.green },
    ['@string.regexp'] = { fg = c.cyan },
    ['@string.escape'] = { fg = c.orange },
    ['@string.special'] = { fg = c.lavender },
    ['@string.special.symbol'] = { fg = c.yellow },
    ['@string.special.path'] = { fg = c.blue },
    ['@string.special.url'] = { fg = c.blue, underline = true },

    ['@character'] = { fg = c.green },
    ['@character.special'] = { fg = c.orange },
    ['@boolean'] = { fg = c.orange, bold = true },
    ['@number'] = { fg = c.orange },
    ['@number.float'] = { fg = c.orange },

    ['@type'] = { fg = c.cyan },
    ['@type.builtin'] = { fg = c.cyan, italic = true },
    ['@type.definition'] = { fg = c.cyan },
    ['@attribute'] = { fg = c.yellow },
    ['@attribute.builtin'] = { fg = c.yellow, italic = true },
    ['@property'] = { fg = c.cyan },

    ['@function'] = fn({ fg = c.blue }),
    ['@function.builtin'] = fn({ fg = c.blue, italic = true }),
    ['@function.call'] = fn({ fg = c.blue }),
    ['@function.macro'] = fn({ fg = c.pink }),
    ['@function.method'] = fn({ fg = c.blue }),
    ['@function.method.call'] = fn({ fg = c.blue }),
    ['@constructor'] = { fg = c.cyan },

    ['@operator'] = { fg = c.subtext0 },

    ['@keyword'] = kw({ fg = c.purple }),
    ['@keyword.coroutine'] = kw({ fg = c.purple }),
    ['@keyword.function'] = kw({ fg = c.purple }),
    ['@keyword.operator'] = kw({ fg = c.purple }),
    ['@keyword.import'] = kw({ fg = c.purple }),
    ['@keyword.type'] = kw({ fg = c.purple }),
    ['@keyword.modifier'] = kw({ fg = c.purple }),
    ['@keyword.repeat'] = kw({ fg = c.purple }),
    ['@keyword.return'] = kw({ fg = c.purple }),
    ['@keyword.debug'] = kw({ fg = c.red }),
    ['@keyword.exception'] = kw({ fg = c.purple }),
    ['@keyword.conditional'] = kw({ fg = c.purple }),
    ['@keyword.conditional.ternary'] = kw({ fg = c.subtext0 }),
    ['@keyword.directive'] = kw({ fg = c.pink }),
    ['@keyword.directive.define'] = kw({ fg = c.pink }),

    ['@punctuation.delimiter'] = { fg = c.overlay2 },
    ['@punctuation.bracket'] = { fg = c.overlay2 },
    ['@punctuation.special'] = { fg = c.lavender },

    ['@comment'] = styled({ fg = c.comment }, comments),
    ['@comment.documentation'] = styled({ fg = c.comment }, comments),
    ['@comment.error'] = { fg = c.red, bold = true },
    ['@comment.warning'] = { fg = c.yellow, bold = true },
    ['@comment.todo'] = { fg = c.lavender, bold = true },
    ['@comment.note'] = { fg = c.cyan, bold = true },

    ['@markup'] = { fg = c.fg },
    ['@markup.strong'] = { fg = c.fg, bold = true },
    ['@markup.italic'] = { fg = c.subtext1, italic = true },
    ['@markup.strikethrough'] = { fg = c.overlay2, strikethrough = true },
    ['@markup.underline'] = { underline = true },
    ['@markup.heading'] = { fg = c.lavender, bold = true },
    ['@markup.heading.1'] = { fg = c.red, bold = true },
    ['@markup.heading.2'] = { fg = c.orange, bold = true },
    ['@markup.heading.3'] = { fg = c.yellow, bold = true },
    ['@markup.heading.4'] = { fg = c.green, bold = true },
    ['@markup.heading.5'] = { fg = c.cyan, bold = true },
    ['@markup.heading.6'] = { fg = c.lavender, bold = true },
    ['@markup.quote'] = { fg = c.subtext0, italic = true },
    ['@markup.math'] = { fg = c.cyan },
    ['@markup.link'] = { fg = c.lavender },
    ['@markup.link.label'] = { fg = c.lavender },
    ['@markup.link.url'] = { fg = c.blue, underline = true },
    ['@markup.raw'] = { fg = c.green },
    ['@markup.list'] = { fg = c.lavender },
    ['@markup.list.checked'] = { fg = c.green },
    ['@markup.list.unchecked'] = { fg = c.overlay1 },

    ['@diff.plus'] = { fg = c.green },
    ['@diff.minus'] = { fg = c.red },
    ['@diff.delta'] = { fg = c.blue },

    ['@tag'] = { fg = c.blue },
    ['@tag.builtin'] = { fg = c.blue },
    ['@tag.attribute'] = { fg = c.yellow },
    ['@tag.delimiter'] = { fg = c.overlay2 },
  }
end

return M
