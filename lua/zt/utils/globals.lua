local functions = require 'zt.utils.functions'

_G.reload = function() 
  local counter = 0
  for moduleName in pairs(package.loaded) do
    if functions.starts_with(moduleName, 'zt.') then
      package.loaded[moduleName] = nil
      require(moduleName)
      counter = counter + 1
    end
  end
  print('Reloaded '.. counter .. ' modules!')
end

_G.smart_tab = function()
  return vim.fn.pumvisible() == 1 and functions.t'<C-n>' or functions.t'<Tab>'
end
