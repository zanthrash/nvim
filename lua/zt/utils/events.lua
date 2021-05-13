local vimcmd

if vim.api ~= nil then
  vimcmd = vim.api.nvim_command
else
  vimcmd = vim.command
end

local gloablListenerName = 'globallistenername'

local autocmdhandlers = {}

_G[gloablListenerName] = function (name)
  local handler = autocmdhandlers[name]
  if handler ~= nil then
    handler()
  end
end


function AddEventListener (name, events, cb)
  autocmdhandlers[name] = cb
  vimcmd('augroup ' .. name)
  vimcmd('autocmd!')
  for _, v in ipairs(events) do
    local cmd = 'lua ' .. gloablListenerName .. '("' .. name .. '")'
    vimcmd('au ' .. v .. ' ' .. cmd)
  end
  vimcmd('augroup end')
end

function RemvoeEventListener (name)
  vimcmd('augroup ' .. name)
  vimcmd('autocmd!')
  vimcmd('augroup end')
  autocmdhandlers[name] = nil
end
