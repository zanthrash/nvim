return function(language_server_path, on_attach)
  local bin_path = language_server_path .. "/typescript/node_modules/typescript-language-server/lib/cli.js"

  return {
    cmd = { bin_path, "--stdio" },
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)

      -- tell tsserver to stop fucking with formatting...thats prettiers job!
      client.resolved_capabilities.document_formatting = false
    end
  }
end
