local M = {}

function M.apply(c)
  local ansi = {
    c.crust,     -- 0 black
    c.red,       -- 1 red
    c.green,     -- 2 green
    c.yellow,    -- 3 yellow
    c.blue,      -- 4 blue
    c.purple,    -- 5 magenta
    c.cyan,      -- 6 cyan
    c.subtext1,  -- 7 white
    c.overlay0,  -- 8 bright black
    c.red,       -- 9 bright red
    c.green,     -- 10 bright green
    c.yellow,    -- 11 bright yellow
    c.blue,      -- 12 bright blue
    c.pink,      -- 13 bright magenta
    c.cyan,      -- 14 bright cyan
    c.white,     -- 15 bright white
  }

  for i, color in ipairs(ansi) do
    vim.g['terminal_color_' .. (i - 1)] = color
  end
end

return M
