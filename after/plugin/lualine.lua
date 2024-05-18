local lualine = require('lualine')
local ts_utils = require('nvim-treesitter.ts_utils')

lualine.setup({
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location', "os.date('%a')"}
  }
})
