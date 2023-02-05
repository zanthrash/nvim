local M = {}

function M.setup()
    local whichkey = require "which-key"

    local conf = {
        plugiins = {
            marks = true,
            registers = true,
            spelling = {
                enabled = true,
                suggestions = 20
            },
            presets = {
                operators = true,
                motions = true,
                text_objects = true,
                windows = true,
                nav = true,
                z = true,
                g = true,
            }
        },
        window = {
            border = "single",
            position = "bottom",
        }
    }

    local opts = {

        mode = "n", -- Normal mode
        prefix = "<leader>",
        buffer = nil, -- global mappings. Specify a buffer number for buffer local mappings
        silent = true,
        noremap = true,
        nowait = false,
    }

    local mappings = {
        ["w"] = { "<cmd>update!<CR>", "Save" },
        ["q"] = { "<cmd>q!<CR>", "Quit" },

        b = {
            name = "Buffer",
            c = { "<Cmd>bd!<CR>", "Close the current buffer" },
            D = { "<Cmd>%bd|e#|bd#<CR>", "Delete all buffers" },
        },

        z = {
            name = "Packer",
            c = { "<Cmd>PackerCompile<CR>", "Compile" },
            i = { "<Cmd>PackerInstall<CR>", "Install" },
            s = { "<Cmd>PackerSync<CR>", "Compile" },
            S = { "<Cmd>PackerStatus<CR>", "Status" },
            u = { "<Cmd>PackerUpdate<CR>", "Update" },
        }
    }

    whichkey.setup(conf)
    whichkey.register(mappings, opts)
end

return M
