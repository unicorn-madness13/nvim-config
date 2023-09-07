local workspaces = require('workspaces')
local wk = require('which-key')

workspaces.setup({
  hooks = {
    open_pre = { 'bufdo bd' },
    open = { 'Telescope find_files' },
  },
})


function open_workspace()
  local name = vim.fn.input('Open > ')
  workspaces.open(name)
end

function add_workspace()
  local name = vim.fn.input('Name > ')
  local path = vim.fn.input('Path > ')
  workspaces.add(path, name)
end

wk.register({
  w = {
    name = 'workspace',
    o = { open_workspace, 'Open Workspace' },
    a = { add_workspace, 'Add Workspace' },
    l = { '<cmd>WorkspacesList<cr>', 'List Workspaces' },
  }
}, { prefix = '<leader>' })
