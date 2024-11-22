local dap = require("dap")

-- ui
require("configs.dap.ui")

-- debuggers
local lldb = require("configs.dap.adapters.lldb")
local cpptools = require("configs.dap.adapters.cpptools")

dap.adapters.lldb = lldb.adapter
dap.adapters.cppdbg = cpptools.adapter

dap.configurations.c = cpptools.config
dap.configurations.cpp = cpptools.config
dap.configurations.rust = lldb.config

require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})
