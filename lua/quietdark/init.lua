local M = {}

local config = require('quietdark.config')

function M.setup(opts)
  config.setup(opts)
end

function M.palette()
  return require('quietdark.palette')
end

function M.load()
  local c = require('quietdark.palette')
  local opts = config.options
  local util = require('quietdark.util')

  vim.o.termguicolors = true
  vim.o.background = 'dark'

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
