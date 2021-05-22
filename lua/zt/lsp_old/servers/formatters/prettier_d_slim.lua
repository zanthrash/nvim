-- local prettier = {
--   formatCommand = "prettier_d_slim --stdin --stdin-filepath %{INPUT}",
--   formatStdin = true
-- }
--
local prettier = {
  formatCommand = "prettier_d_slim", args = {"--stdin", "--stdin-filepath", "%filepath"}
}

return prettier

