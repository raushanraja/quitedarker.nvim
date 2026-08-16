local M = {}

M.defaults = {
  transparent = false,
  dim_inactive = true,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },
  -- Structural choices are deliberately separate from the colorscheme.
  -- The fork can enable these by default, while ordinary colorscheme users
  -- can opt out with setup({ appearance = false }).
  appearance = true,
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend('force', vim.deepcopy(M.defaults), opts or {})
end

return M
