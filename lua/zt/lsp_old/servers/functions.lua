local M = {}

-- https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
M.lsp_install_servers = function()
    local function installLanguageServer(filetype, languageServer)
        if pcall(function() vim.cmd ('set filetype=' .. filetype) end) then
          vim.cmd ('LspInstall ' .. languageServer)
        else
          vim.cmd ('LspInstall ' .. languageServer)
        end
    end

    installLanguageServer('lua', 'lua')
    installLanguageServer('sh', 'bash')
    installLanguageServer('json', 'json')
    installLanguageServer('vim', 'vim')
    installLanguageServer('yaml', 'yaml')
    installLanguageServer('html', 'html')
    installLanguageServer('css', 'css')
    installLanguageServer('typescript', 'typescript')
    installLanguageServer('svelte', 'svelte')
    installLanguageServer('py', 'python')
    installLanguageServer('dockerfile', 'dockerfile')
    installLanguageServer('go', 'go')
    installLanguageServer('elixir', 'elixir')
    installLanguageServer('rust', 'rust')
    installLanguageServer('tailwind', 'tailwindcss')

    -- installLanguageServer('Dockerfile')

    -- must be installed globally
    installLanguageServer('*', 'efm')
    installLanguageServer('*', 'diagnosticls')

end

return M
