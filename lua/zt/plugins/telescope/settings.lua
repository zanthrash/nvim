local actions = require('telescope.actions')
local telescope = require('telescope')

telescope.setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        color_devicons = true,
        file_ignore_patterns = {".backup",".swap",".langservers",".session",".undo","*.git","node_modules","vendor",".cache",".vscode-server",".Desktop",".Documents","classes"},
        shorten_path = true,
        use_less = true,
        prompt_prefix = "  ",
        selection_caret = " ",


        set_env = { ['COLORTERM'] = 'truecolor' },
        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

telescope.load_extension('fzy_native')

