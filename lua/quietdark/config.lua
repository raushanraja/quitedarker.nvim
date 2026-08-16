local M = {}

M.defaults = {
  -- Palette variant. Also available directly as :colorscheme quietdark-<style>.
  style = 'quietdark',

  transparent = false,
  dim_inactive = true,
  terminal_colors = true,

  -- Typography for code syntax. UI groups such as StatusLine/Pmenu/LineNr
  -- are themed separately in highlights/editor.lua.
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },

  -- Structural choices are deliberately separate from the colorscheme.
  -- Disable this if you only want the colors/highlights.
  appearance = true,
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend('force', vim.deepcopy(M.defaults), opts or {})
end

return M
