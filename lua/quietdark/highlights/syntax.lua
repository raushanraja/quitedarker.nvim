local M = {}

function M.get(c, opts)
  local comments = opts.styles.comments or {}
  local keywords = opts.styles.keywords or {}
  local functions = opts.styles.functions or {}
  local variables = opts.styles.variables or {}

  return {
    Comment = vim.tbl_extend('force', { fg = c.comment }, comments),
    SpecialComment = { fg = c.overlay2, italic = true },

    Constant = { fg = c.yellow },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.orange },
    Boolean = { fg = c.orange, bold = true },
    Float = { fg = c.orange },

    Identifier = vim.tbl_extend('force', { fg = c.fg }, variables),
    Function = vim.tbl_extend('force', { fg = c.blue }, functions),

    Statement = vim.tbl_extend('force', { fg = c.purple }, keywords),
    Conditional = { fg = c.purple, bold = true },
    Repeat = { fg = c.purple, bold = true },
    Label = { fg = c.lavender },
    Operator = { fg = c.subtext0 },
    Keyword = vim.tbl_extend('force', { fg = c.purple }, keywords),
    Exception = { fg = c.purple, bold = true },

    PreProc = { fg = c.pink },
    Include = { fg = c.purple },
    Define = { fg = c.pink },
    Macro = { fg = c.pink },
    PreCondit = { fg = c.pink },

    Type = { fg = c.cyan },
    StorageClass = { fg = c.purple },
    Structure = { fg = c.cyan },
    Typedef = { fg = c.cyan },

    Special = { fg = c.lavender },
    SpecialChar = { fg = c.orange },
    Tag = { fg = c.blue },
    Delimiter = { fg = c.overlay2 },
    Debug = { fg = c.red },

    Underlined = { fg = c.blue, underline = true },
    Ignore = { fg = c.overlay0 },
    Error = { fg = c.red, bold = true },
    Todo = { fg = c.crust, bg = c.yellow, bold = true },

    -- Common diff aliases used by ftplugins and plugins.
    diffAdded = { fg = c.green },
    diffRemoved = { fg = c.red },
    diffChanged = { fg = c.blue },
    diffOldFile = { fg = c.red },
    diffNewFile = { fg = c.green },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.overlay2 },
    diffIndexLine = { fg = c.purple },
  }
end

return M
