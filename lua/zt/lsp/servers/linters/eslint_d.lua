local eslint = {
  lintCommand = "eslint_d -f visualstudio --stdin --stdin-filename ${INPUT}",
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = {"%f(%l,%c): %tarning %m", "%f(%1,%c): %rror %m"},
  formatCommand = "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}",
  formatStdin = true
}
--
-- local eslint = {
--   sourceName = "eslint",
--   command = "eslint_d",
--   rotPatterns = {".eslintrc.js", "package.json"},
--   debounce = 100,
--   args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
--   parseJson = {
--     errorRoot = "[0].messages",
--     line = "line",
--     column = "column",
--     endline = "endLine",
--     endColumn = "endColumn",
--     message = "${message} [${ruleId}]",
--     security = "severity"
--   }
-- }

return eslint
