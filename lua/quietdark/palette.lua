-- Palette goals:
--   * dark enough to feel calmer than OneDark "darker"
--   * slightly plum/ink-biased rather than blue-black
--   * high-contrast body text, subdued chrome
--   * pastel accents reserved for semantic meaning
--
-- WCAG contrast against bg0 (#171923), approximately:
--   fg       11.0:1
--   subtext1  9.2:1
--   subtext0  7.6:1
--   accents   6.6:1 - 10.1:1

return {
  none = 'NONE',

  black = '#0d0f15',
  crust = '#11131a',
  bg0 = '#171923',
  bg1 = '#1c1f2b',
  bg2 = '#232735',
  bg3 = '#2b3041',
  bg4 = '#343a4d',

  border = '#2b3040',
  border_active = '#514b78',
  selection = '#30354b',
  cursorline = '#1b1e29',

  fg = '#c8cbe0',
  subtext1 = '#b7bad0',
  subtext0 = '#a5a9c0',
  overlay2 = '#8c91aa',
  overlay1 = '#71778f',
  overlay0 = '#585e74',
  comment = '#727990',
  white = '#e3e6f5',

  lavender = '#aaa7e8',
  blue = '#7ea6e8',
  cyan = '#7fc0c4',
  green = '#8fc59b',
  yellow = '#dcc184',
  orange = '#e2a06f',
  red = '#e67f99',
  pink = '#df8fb3',
  purple = '#bd96d8',

  -- Soft tinted surfaces. These intentionally avoid saturated blocks.
  diff_add = '#2b3537',
  diff_change = '#283043',
  diff_delete = '#382936',
  diff_text = '#394662',
  search = '#47413a',
  search_current = '#e2a06f',
  visual = '#30354b',

  -- Semantic aliases: components should prefer these over hue names.
  error = '#e67f99',
  warn = '#dcc184',
  info = '#7fc0c4',
  hint = '#7ea6e8',
  ok = '#8fc59b',
  accent = '#aaa7e8',
}
