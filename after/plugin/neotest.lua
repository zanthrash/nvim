local M = {}

function M.setup()

    require("neotest").setup {

        adapters = {
            require "neotest-jest",
            require "neotest-vitest",
            require "neotest-go",
            require "neotest-rust",
            require "neotest-vim-test" {
                ignore_file_types = { "python", "vim", "lua" },
            },
        },
    }
end

return M
