-- For this follow this tutorial: https://github.com/mfussenegger/nvim-dap/wiki/C-C---Rust-(gdb-via--vscode-cpptools)
-- Download vscode-cpptools from github (.vsix file) and unzip input
-- Change the path below accordingly

local M = {}

M.adapter = {
  id = 'cppdbg',
  type = 'executable',
  command = '/opt/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
}

M.config = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
    setupCommands = {
      {
        text = '-enable-pretty-printing',
        description = 'enable pretty printing',
        ignoreFailures = false
      },
    },
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/bin/gdb',
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}

return M
