require "nvchad.mappings"

local map = vim.keymap.set

-- CMake
map("n", "<leader>cg", ":CMakeGenerate<cr>", { desc = "Call CMakeGenerate" })
map("n", "<leader>cb", ":CMakeBuild<cr>", { desc = "Call CMakeBuild" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dh", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger run/continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map("n", "<Leader>dd", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { desc = "Debugger set conditional breakpoint" })
map("n", "<Leader>dt", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger terminate" })
map("n", "<Leader>dc", "<cmd>lua require'dapui'.close()<CR>", { desc = "Debugger ui close" })
map("n", "<Leader>da", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })
map("n", "<leader>df", "<cmd>lua require'dapui'.open({reset = true})<CR>", { desc = "Debugger layout reset." })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
