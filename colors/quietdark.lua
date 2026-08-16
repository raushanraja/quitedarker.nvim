-- quietdark.nvim
-- A soft, dark, low-fatigue colorscheme for Neovim 0.12+.
-- Darker OneDark structure + muted plum/lavender UI language.

vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end

vim.o.termguicolors = true
vim.o.background = 'dark'
vim.g.colors_name = 'quietdark'

require('quietdark').load()
