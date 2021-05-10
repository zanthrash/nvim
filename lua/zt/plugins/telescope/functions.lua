local M = {}

M.search_vimfiles = function()
  require('telescope.builtin').find_files({
    prompt_title = "< VimRC > ",
    cwd = "$HOME/.config/nvim",
  })
end

return M
