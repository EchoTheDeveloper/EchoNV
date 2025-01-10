vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

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

local plugins = {"rmehri01/aura.nvim", name = "aura", priority = 1000}
local opts = {}

require("lazy").setup(plugins, opts)
