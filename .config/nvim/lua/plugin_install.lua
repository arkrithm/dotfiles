local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- local plugins
local plugins = {
	{ import = "plugins" },
}

-- local opts
local opts = {
	root = vim.fn.stdpath("data") .. "/lazy",
	lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
	concurrency = 10,
	checker = { enabled = false },
	log = { level = "info" },
}

-- lazy setup
require("lazy").setup(plugins, opts)
