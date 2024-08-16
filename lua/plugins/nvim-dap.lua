return {
  {
    "ldelossa/nvim-dap-projects",
    event = "VeryLazy",
  },
  
  {
		"mfussenegger/nvim-dap",
		config = function()
			require("configs.dap")
      require("nvim-dap-projects").search_project_config()
		end,
	},

  {
    "nvim-neotest/nvim-nio" 
  },

	{
		"rcarriga/nvim-dap-ui",
		config = function()
			require("dapui").setup()
		end,
		requires = { "mfussenegger/nvim-dap" },
	},

	{
		"theHamsta/nvim-dap-virtual-text",
		config = function()
			require("nvim-dap-virtual-text").setup()
		end,
		requires = { "mfussenegger/nvim-dap" },
	},

  {
    "folke/neodev.nvim", opts = {},
  },
}
