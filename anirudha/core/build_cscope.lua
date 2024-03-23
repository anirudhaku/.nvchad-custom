local M = {}

local build_cscope = function()
  os.execute(
    'find . ' ..
    '-path "./build*" -o -path ./.tup -prune ' ..
    '-o -iname *.c -print ' ..
    '-o -iname *.cc -print ' ..
    '-o -iname *.cpp -print ' ..
    '-o -iname *.h -print ' ..
    '-o -iname *.hh -print ' ..
    '-o -iname *.hpp -print ' ..
    '-o -iname *.json -print ' ..
    '-o -iname *.cfg -print ' ..
    '-o -iname *.default -print ' ..
    '-o -iname *.proto -print ' ..
    '-o -iname *.py -print ' ..
    '> cscope.files'
  )
  vim.cmd('Cs b')
end

M.setup = function()
  local user_command_func = function()
    build_cscope()
  end

  vim.api.nvim_create_user_command('BuildCscope', user_command_func, {})
end

return M
