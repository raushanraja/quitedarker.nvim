local M = {}

local valid_styles = {
  quietdark = true,
  darker = true,
  soft = true,
  warm = true,
  deep = true,
}

function M.styles()
  return { 'quietdark', 'darker', 'soft', 'warm', 'deep' }
end

function M.get(style)
  style = style or 'quietdark'

  if not valid_styles[style] then
    error(('quietdark: unknown style %q (expected quietdark, darker, soft, warm, or deep)'):format(style))
  end

  local base = require('quietdark.palettes.quietdark')
  local override = style == 'quietdark' and {} or require('quietdark.palettes.' .. style)
  local c = vim.tbl_deep_extend('force', {}, base, override)

  -- Semantic aliases are deliberately resolved *after* variant merging so a
  -- variant only needs to change the hue itself.
  c.error = c.red
  c.warn = c.yellow
  c.info = c.cyan
  c.hint = c.blue
  c.ok = c.green
  c.accent = c.lavender

  return c
end

return M
