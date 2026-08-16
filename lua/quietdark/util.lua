local M = {}

function M.hl(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

function M.apply(groups)
  for group, spec in pairs(groups) do
    M.hl(group, spec)
  end
end

return M
