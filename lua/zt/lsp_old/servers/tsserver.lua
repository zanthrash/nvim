return function(language_server_path, on_attach)
  local bin_path = language_server_path .. "/typescript/node_modules/typescript-language-server/lib/cli.js"

  return {
    cmd = { bin_path, "--stdio" },
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      local ts_utils = require("nvim-lsp-ts-utils")

      ts_utils.setup {
        debug = false,
        enable_import_on_completion = true,
        signature_help_in_parens = true,
        eslint_bin = 'eslint_d',
        eslint_enable_diagnostics = true,
        enable_formatting = true,
        formatter = 'eslint_d',
        formatter_args = { '--fix-to-stdout', '--stdin', '--stdin-filename', '$FILENAME' },
        format_on_save = true,
        update_imports_on_move = true,
      }
      --[[ ts_utils.setup {
          debug = true,
          disable_commands = false,
          enable_import_on_completion = false,
          import_on_completion_timeout = 5000,

          -- eslint
          eslint_bin = "eslint",
          eslint_args = {"-f", "json", "--stdin", "--stdin-filename", "$FILENAME"},
          eslint_enable_disable_comments = true,

          -- experimental settings!
          -- eslint diagnostics
          eslint_enable_diagnostics = false,
          eslint_diagnostics_debounce = 250,

          -- formatting
          enable_formatting = true,
          formatter = "prettier",
          formatter_args = { "--stdin-filepath", "$FILENAME"},
          format_on_save = true,
          no_save_after_format = false,

          -- parentheses completion
          complete_parens = true,
          signature_help_in_parens = true,

          -- update imports on file move
          update_imports_on_move = false,
          require_confirmation_on_move = false,
          watch_dir = "/src",
      } ]]

      ts_utils.setup_client(client)


      -- tell tsserver to stop fucking with formatting...thats prettiers job!
      -- client.resolved_capabilities.document_formatting = false
    end
  }
end
