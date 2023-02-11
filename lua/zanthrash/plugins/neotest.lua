local setup, neotest = pcall(require, "neotest")
if not setup then
	return
end

---@diagnostic disable-next-line: redundant-parameter
neotest.setup({
	adapters = {
		require("neotest-vitest"),
		-- require("neotest-jest"),
		require("neotest-go"),
		require("neotest-rust"),
		require("neotest-vim-test")({
			ignore_file_types = { "python", "vim", "lua" },
		}),
	},
	quickfix = {
		open = false,
	},
	status = {
		enabled = true,
		signs = true, -- Sign after function signature
		virtual_text = false,
	},
	icons = {
		child_indent = "│",
		child_prefix = "├",
		collapsed = "─",
		expanded = "╮",
		failed = "✘",
		final_child_indent = " ",
		final_child_prefix = "╰",
		non_collapsible = "─",
		passed = "✓",
		running = "",
		running_animated = { "/", "|", "\\", "-", "/", "|", "\\", "-" },
		skipped = "↓",
		unknown = "",
	},
	floating = {
		border = "rounded",
		max_height = 0.9,
		max_width = 0.9,
		options = {},
	},
	highlights = {
		adapter_name = "NeotestAdapterName",
		border = "NeotestBorder",
		dir = "NeotestDir",
		expand_marker = "NeotestExpandMarker",
		failed = "NeotestFailed",
		file = "NeotestFile",
		focused = "NeotestFocused",
		indent = "NeotestIndent",
		marked = "NeotestMarked",
		namespace = "NeotestNamespace",
		passed = "NeotestPassed",
		running = "NeotestRunning",
		select_win = "NeotestWinSelect",
		skipped = "NeotestSkipped",
		target = "NeotestTarget",
		test = "NeotestTest",
		unknown = "NeotestUnknown",
	},
})
local map_opts = { noremap = true, silent = true, nowait = true }

vim.keymap.set("n", "<localleader>tf", function()
	neotest.run.run(vim.fn.expand("%"))
	neotest.summary.open()
end, map_opts)

vim.keymap.set("n", "<localleader>tn", function()
	neotest.run.run()
	neotest.summary.open()
end, map_opts)

vim.keymap.set("n", "<localleader>tl", function()
	neotest.run.run_last()
	neotest.summary.open()
end, map_opts)

vim.keymap.set("n", "<localleader>to", neotest.output.open)

vim.keymap.set("n", "<localleader>ts", function()
	neotest.summary.toggle()
end, map_opts)

vim.keymap.set("n", "<localleader>tc", function()
	neotest.summary.close()
end, map_opts)
