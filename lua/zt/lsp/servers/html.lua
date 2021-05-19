return function(language_server_path)
  local bin_path = language_server_path .. "/vscode-html/html-language-features/server/dist/node/htmlServerMain.js"

   return {
    cmd = { "node", bin_path,  "--stdio" },
    filetypes = {
      -- html
      'aspnetcorerazor',
      'blade',
      'django-html',
      'edge',
      'ejs',
      'eruby',
      'gohtml',
      'haml',
      'handlebars',
      'hbs',
      'html',
      'html-eex',
      'jade',
      'leaf',
      'liquid',
      'markdown',
      'mdx',
      'mustache',
      'njk',
      'nunjucks',
      'php',
      'razor',
      'slim',
      'twig',
      -- mixed
      'vue',
      'svelte',
    },
    root_dir = require'lspconfig'.util.root_pattern(".git", vim.fn.getcwd()),
    init_options = {
      provideFormatter = true,
    },
  }
end
