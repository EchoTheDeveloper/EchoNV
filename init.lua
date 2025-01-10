vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Path for lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release version
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("lua/plugins")

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = {"lua", "javascript", "bash", "c", "c_sharp", "cpp", "css", "csv", "cuda", "fsharp", "fortran", "glsl", "go", "groovy", "html", "java", "json", "json5", "kotlin", "ocaml", "python", "sql", "ruby", "toml", "zig", "typescript"},
	highlight = {enable = true},
	indent = {enable = true},
})

require("catppuccin").setup()

vim.cmd.colorscheme "catppuccin"
