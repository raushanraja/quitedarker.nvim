local M = {}

local config = require('quietdark.config')
local palette = require('quietdark.palette')

function M.setup(opts)
  config.setup(opts)
end

function M.palette(style)
  return palette.get(style or config.options.style)
end

function M.styles()
  return palette.styles()
end

function M.load(overrides)
  overrides = overrides or {}

  local opts = vim.tbl_deep_extend('force', {}, config.options, overrides)
  local c = palette.get(opts.style)
  local util = require('quietdark.util')

  vim.cmd('highlight clear')
  if vim.fn.exists('syntax_on') == 1 then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.o.background = 'dark'

  -- colors_name can be supplied by a variant colorscheme wrapper. Loading the
  -- base :colorscheme quietdark still honors setup({ style = ... }) while its
  -- public colorscheme name remains quietdark.
  vim.g.colors_name = opts.colors_name or 'quietdark'

  util.apply(require('quietdark.highlights.editor').get(c, opts))
  util.apply(require('quietdark.highlights.syntax').get(c, opts))
  util.apply(require('quietdark.highlights.treesitter').get(c, opts))
  util.apply(require('quietdark.highlights.lsp').get(c, opts))

  if opts.terminal_colors then
    require('quietdark.terminal').apply(c)
  end

  if opts.appearance then
    require('quietdark.appearance').apply()
  end
end

return M
