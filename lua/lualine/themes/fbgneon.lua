-- Copyright (c) 2026 febagnato
-- GPLv3 license, see LICENSE for more details.

local colors = {
  black  = '#232526',
  gray   = '#808080',
  white  = '#f8f8f2',
  cyan   = '#00b8ff',
  green  = '#00ff9f',
  orange = '#ff5f00',
  pink   = '#f92672',
  pink2  = '#ff00d7',
  purple = '#5f00d7',
  red    = '#af0000',
  yellow = '#c4a000',
}

return {
  normal = {
    a = { fg = colors.black, bg = colors.cyan, gui = 'bold' },
    b = { fg = colors.black, bg = colors.pink },
    c = { fg = colors.pink2, bg = colors.purple, gui = 'bold' },
    x = { fg = colors.pink,  bg = colors.purple, gui = 'bold' },
  },
  insert = { a = { fg = colors.black, bg = colors.green, gui = 'bold' } },
  visual = { a = { fg = colors.black, bg = colors.yellow, gui = 'bold' } },
  replace = { a = { fg = colors.black, bg = colors.orange, gui = 'bold' } },
  inactive = {
    a = { fg = colors.pink, bg = colors.purple, gui = 'bold' },
    b = { fg = colors.white, bg = colors.pink },
    c = { fg = colors.gray, bg = colors.purple },
  },
}
