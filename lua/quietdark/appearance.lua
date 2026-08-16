local M = {}

-- Visual geometry chosen to match the reference direction. This is kept out
-- of the colorscheme proper so users can use the palette without inheriting
-- layout policy. Our fork can call it unconditionally.
function M.apply()
  if vim.fn.has('nvim-0.12') == 1 then
    vim.o.winborder = 'rounded'
    vim.o.pumborder = 'rounded'
  end

  vim.o.pumblend = 0
  vim.o.winblend = 0

  vim.opt.fillchars = vim.tbl_extend('force', vim.opt.fillchars:get(), {
    vert = '│',
    horiz = '─',
    horizup = '┴',
    horizdown = '┬',
    vertleft = '┤',
    vertright = '├',
    verthoriz = '┼',
    foldopen = '▾',
    foldclose = '▸',
    foldsep = '│',
    eob = ' ',
    diff = '╱',
  })
end

return M
