return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
    -- lua stuff
		"lua-language-server",
		"stylua",

		-- C / C++
		"clangd",
		"clang-format",
		"cmake-language-server",
		"cpplint",
		"cpptools",
    "codelldb",

		-- shell
		"shellcheck",
		"shellharden",
		"bash-language-server",
		"bash-debug-adapter",
		"awk-language-server",

		-- python
		"pyright",
		"pylint",
      }
    }
  }
}
