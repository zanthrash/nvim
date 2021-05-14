local M = {}

M.search_vimfiles = function()
  require('telescope.builtin').find_files({
    prompt_title = "< VimRC > ",
    cwd = "$HOME/.config/nvim",
  })
end

M.project_files = function()
  local opts = {}
  local ok = pcall(require'telescope.builtin'.git_files, opts)
  if not ok then require'telescope.builtin'.find_file(opts) end
end

return M
