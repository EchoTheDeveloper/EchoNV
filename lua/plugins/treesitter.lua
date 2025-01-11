return {
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua", "javascript", "bash", "c", "c_sharp", "cpp", "css", "csv", "cuda", 
		"		fsharp", "fortran", "glsl", "go", "groovy", "html", "java", "json", "json5", 
				"kotlin", "ocaml", "python", "sql", "ruby", "toml", "zig", "typescript"
			},
			highlight = {enable = true},
			indent = {enable = true},
		})
	end
}
