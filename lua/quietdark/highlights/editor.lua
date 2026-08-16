local M = {}

function M.get(c, opts)
  local bg = opts.transparent and c.none or c.bg0
  local bg_nc = opts.transparent and c.none or (opts.dim_inactive and c.crust or c.bg0)
  local float_bg = opts.transparent and c.none or c.bg1

  return {
    Normal = { fg = c.fg, bg = bg },
    NormalNC = { fg = c.subtext1, bg = bg_nc },
    NormalFloat = { fg = c.fg, bg = float_bg },
    NormalSB = { fg = c.subtext1, bg = c.crust },

    ColorColumn = { bg = c.bg1 },
    Conceal = { fg = c.overlay1 },
    Cursor = { fg = c.bg0, bg = c.lavender },
    lCursor = { link = 'Cursor' },
    CursorIM = { link = 'Cursor' },
    TermCursor = { fg = c.bg0, bg = c.lavender },
    TermCursorNC = { fg = c.bg0, bg = c.overlay2 },
    CursorColumn = { bg = c.cursorline },
    CursorLine = { bg = c.cursorline },
    CursorLineNr = { fg = c.lavender, bold = true },
    CursorLineSign = { bg = c.cursorline },
    CursorLineFold = { fg = c.lavender, bg = c.cursorline },

    LineNr = { fg = c.overlay0 },
    LineNrAbove = { fg = c.overlay0 },
    LineNrBelow = { fg = c.overlay0 },
    SignColumn = { fg = c.overlay1, bg = bg },
    FoldColumn = { fg = c.overlay0, bg = bg },
    Folded = { fg = c.subtext0, bg = c.bg1, italic = true },

    Directory = { fg = c.blue },
    EndOfBuffer = { fg = c.bg2 },
    NonText = { fg = c.overlay0 },
    Whitespace = { fg = c.bg4 },
    SpecialKey = { fg = c.overlay0 },

    WinSeparator = { fg = c.border },
    VertSplit = { link = 'WinSeparator' },

    StatusLine = { fg = c.subtext1, bg = c.crust },
    StatusLineNC = { fg = c.overlay0, bg = c.crust },
    StatusLineTerm = { link = 'StatusLine' },
    StatusLineTermNC = { link = 'StatusLineNC' },
    TabLine = { fg = c.overlay1, bg = c.crust },
    TabLineFill = { bg = c.crust },
    TabLineSel = { fg = c.fg, bg = c.bg2, bold = true },
    WinBar = { fg = c.subtext0, bg = bg },
    WinBarNC = { fg = c.overlay0, bg = bg_nc },

    Visual = { bg = c.visual },
    VisualNC = { bg = c.bg2 },
    VisualNOS = { bg = c.visual },

    Search = { fg = c.fg, bg = c.search },
    IncSearch = { fg = c.crust, bg = c.yellow, bold = true },
    CurSearch = { fg = c.crust, bg = c.search_current, bold = true },
    Substitute = { fg = c.crust, bg = c.pink },
    MatchParen = { fg = c.orange, bold = true, underline = true },

    FloatBorder = { fg = c.border_active, bg = float_bg },
    FloatTitle = { fg = c.lavender, bg = float_bg, bold = true },
    FloatFooter = { fg = c.overlay2, bg = float_bg },
    FloatShadow = { bg = c.black, blend = 70 },
    FloatShadowThrough = { bg = c.black, blend = 100 },

    Pmenu = { fg = c.subtext1, bg = c.bg1 },
    PmenuBorder = { fg = c.border_active, bg = c.bg1 },
    PmenuSel = { fg = c.fg, bg = c.bg3, bold = true },
    PmenuMatch = { fg = c.lavender, bold = true },
    PmenuMatchSel = { fg = c.white, bold = true },
    PmenuKind = { fg = c.blue, bg = c.bg1 },
    PmenuKindSel = { fg = c.blue, bg = c.bg3, bold = true },
    PmenuExtra = { fg = c.overlay1, bg = c.bg1 },
    PmenuExtraSel = { fg = c.overlay2, bg = c.bg3 },
    PmenuSbar = { bg = c.bg2 },
    PmenuThumb = { bg = c.overlay0 },
    PmenuShadow = { bg = c.black, blend = 70 },
    PmenuShadowThrough = { bg = c.black, blend = 100 },
    PreInsert = { fg = c.overlay2 },
    ComplMatchIns = { link = 'PreInsert' },
    ComplHint = { fg = c.subtext0 },
    ComplHintMore = { fg = c.lavender },

    QuickFixLine = { bg = c.bg2, bold = true },

    DiffAdd = { bg = c.diff_add },
    DiffChange = { bg = c.diff_change },
    DiffDelete = { bg = c.diff_delete },
    DiffText = { bg = c.diff_text, bold = true },
    DiffTextAdd = { bg = c.diff_add, bold = true },
    Added = { fg = c.green },
    Changed = { fg = c.blue },
    Removed = { fg = c.red },

    ErrorMsg = { fg = c.red, bold = true },
    WarningMsg = { fg = c.yellow },
    MoreMsg = { fg = c.cyan },
    ModeMsg = { fg = c.lavender, bold = true },
    Question = { fg = c.blue },
    OkMsg = { fg = c.green },
    MsgSeparator = { link = 'WinSeparator' },
    MsgArea = { fg = c.fg, bg = bg },
    StdoutMsg = { fg = c.subtext1 },
    StderrMsg = { fg = c.red },

    Title = { fg = c.lavender, bold = true },
    WildMenu = { fg = c.fg, bg = c.bg3 },

    SpellBad = { sp = c.red, undercurl = true },
    SpellCap = { sp = c.yellow, undercurl = true },
    SpellLocal = { sp = c.blue, undercurl = true },
    SpellRare = { sp = c.green, undercurl = true },

    -- Internal Neovim UI groups. Keeping these themed avoids sudden islands
    -- of the stock default palette in :messages, :checkhealth, etc.
    NvimInternalError = { fg = c.crust, bg = c.red, bold = true },
    NvimInvalidSpacing = { bg = c.diff_delete },
  }
end

return M
