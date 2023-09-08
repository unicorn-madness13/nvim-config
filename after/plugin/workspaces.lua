local workspaces = require('workspaces')
local util = require('workspaces.util')
local wk = require('which-key')


function basename_on_windows(file)
  return file:match('^.+\\(.+)$')
end

function dir_is_project(dir)
  return string.find(dir, 'projects') ~= nil
end

function add_project_to_workspace(project)
  local name = basename_on_windows(project)
  if name == 'projects' then
    return
  end
  local projects = workspaces.get()
  for k, p in pairs(projects) do
    if p['name'] == name then
      return
    end
  end
  workspaces.add(project, name)
end

-- add workspace if it's not already in the list and it's
-- in a projects directory
local my_ws_group = vim.api.nvim_create_augroup('my_ws_group', { clear = true })
vim.api.nvim_create_autocmd({ 'DirChanged' }, {
  callback = function()
    local cur_dir = vim.fn.getcwd()
    if not dir_is_project(cur_dir) then
      return
    end
    add_project_to_workspace(cur_dir)
  end,

  group = my_ws_group
})

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
