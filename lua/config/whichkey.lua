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

        t = {
            name = "Test",
            a = { "<CMD>lua require('neotest').run.attach()<CR>", "Attach" },
            f = { "<CMD>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "Run File" },
            F = { "<CMD>lua require('neotest').run.run(vim.fn.expand('%'), strategy = 'dap'})", "Debug File" },
            l = { "<CMD>lua require('neotest').run.run_last()<CR>", "Run Last" },
            L = { "<CMD>lua require('neotest').run.run_last({strategy = 'dap'})<CR>", "Debug Last" },
            n = { "<CMD>lua require('neotest').run.run()<CR>", "Run Nearest" },
            N = { "<CMD>lua require('neotest').run.run( {strategy = 'dap'})<CR>", "Debug Nearest" },
            o = { "<CMD>lua require('neotest').output.open( { enter = true })<CR>", "Output" },
            S = { "<CMD>lua require('neotest').run.stop()<CR>", "Stop" },
            s = { "<CMD>lua require('neotest').summary.toggle()<CR>", "Toggle" },
        },


        z = {
            name = "Packer",
            c = { "<Cmd>PackerCompile<CR>", "Compile" },
            i = { "<Cmd>PackerInstall<CR>", "Install" },
            s = { "<Cmd>PackerSync<CR>", "Sync" },
            S = { "<Cmd>PackerStatus<CR>", "Status" },
            u = { "<Cmd>PackerUpdate<CR>", "Update" },
        }
    }

    whichkey.setup(conf)
    whichkey.register(mappings, opts)
end

return M
