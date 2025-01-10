-- init.lua

-- Genral Settings
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Lazy.nvim Path Setup (Dont forget!)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable relase version
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Loadin Plugins
require("lazy").setup("plugins")

-- Key mappings for Telscope (Super Helpful!)
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Key maping for Neo-tree (You gotta love this one!)
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- Treesiter setup (Get those syntax higlights!)
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {
        "lua", "javascript", "bash", "c", "c_sharp", "cpp", "css", "csv", "cuda", 
        "fsharp", "fortran", "glsl", "go", "groovy", "html", "java", "json", "json5", 
        "kotlin", "ocaml", "python", "sql", "ruby", "toml", "zig", "typescript"
    },
    highlight = {enable = true},
    indent = {enable = true},
})

-- Coloscheme setup (make it look snazzy)
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

