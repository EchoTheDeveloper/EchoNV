-- init.lua

-- General Settings
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Lazy.nvim Path Setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",-- init.lua

-- General Settings
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Lazy.nvim Path Setup
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

-- Load plugins
require("lazy").setup("plugins")
-- init.lua

-- General Settings
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- Lazy.nvim Path Setup
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

vim.opt.rtp:prepend(lazypath)

local opts = {}

-- Load plugins
require("lazy").setup("plugins")

-- Key mappings for Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Key mapping for Neo-tree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- Treesitter setup
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "javascript", "bash", "c", "c_sharp", "cpp", "css", "csv", "cuda", "fsharp", "fortran", "glsl", "go", "groovy", "html", "java", "json", "json5", "kotlin", "ocaml", "python", "sql", "ruby", "toml", "zig", "typescript"},
    highlight = {enable = true},
    indent = {enable = true},
})

-- Colorscheme setup
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- Key mappings for Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Key mapping for Neo-tree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- Treesitter setup
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "javascript", "bash", "c", "c_sharp", "cpp", "css", "csv", "cuda", "fsharp", "fortran", "glsl", "go", "groovy", "html", "java", "json", "json5", "kotlin", "ocaml", "python", "sql", "ruby", "toml", "zig", "typescript"},
    highlight = {enable = true},
    indent = {enable = true},
})

-- Colorscheme setup
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release version
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

-- Load plugins
require("lazy").setup("plugins")

-- Key mappings for Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Key mapping for Neo-tree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- Treesitter setup
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "javascript", "bash", "c", "c_sharp", "cpp", "css", "csv", "cuda", "fsharp", "fortran", "glsl", "go", "groovy", "html", "java", "json", "json5", "kotlin", "ocaml", "python", "sql", "ruby", "toml", "zig", "typescript"},
    highlight = {enable = true},
    indent = {enable = true},
})

-- Colorscheme setup
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

