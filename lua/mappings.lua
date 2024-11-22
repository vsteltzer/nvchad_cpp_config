require "nvchad.mappings"

local map = vim.keymap.set

-- CMake
map("n", "<leader>cg", ":CMakeGenerate<cr>", { desc = "Call CMakeGenerate" })
map("n", "<leader>cb", ":CMakeBuild<cr>", { desc = "Call CMakeBuild" })
map("n", "<leader>cc", ":CMakeClean<cr>", { desc = "Call CMakeClean" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dh", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger run/continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map("n", "<Leader>dd", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { desc = "Debugger set conditional breakpoint" })
map("n", "<Leader>dq", function() require'dap'.terminate() require'dapui'.close() end, { desc = "Debugger terminate and ui close" })
map("n", "<Leader>dc", "<cmd>lua require'dapui'.close()<CR>", { desc = "Debugger ui close" })
map("n", "<Leader>da", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })
map("n", "<leader>df", "<cmd>lua require'dapui'.open({reset = true})<CR>", { desc = "Debugger layout reset." })

-- LSP config
map(
	"n",
	"gl",
	"<cmd>lua vim.diagnostic.open_float(0, { scope = 'line', border = 'single' })<CR>",
	{ desc = "Lsp show diagnostic" }
)
map("n", "<Leader>dF", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "Go to previous diagnostic" })
map("n", "<Leader>df", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "Go to next diagnostic" })
map("n", "<Leader>dt", "<cmd>Telescope diagnostics<CR>", { desc = "Telescope diagnostics" })
map("n", "<Leader>da", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Lsp code action" })

-- Null-ls
map(
	"n",
	"<C-f>",
	"<cmd>lua require('configs.lsp.null-ls').lsp_formatting(vim.api.nvim_get_current_buf())<CR>",
	{ desc = "Format current file using null-ls" }
)

-- Comfort remaps
-- Remape deletes to not overwrite default buffer
map('n', 'c', '"_c', { noremap = true })
map('v', 'c', '"_c', { noremap = true })
map('n', 'x', '"_x', { noremap = true })
map('v', 'x', '"_x', { noremap = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
