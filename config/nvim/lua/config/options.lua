-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Speed & feel
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.updatetime = 150
vim.opt.timeoutlen = 300

-- Writing support (activated per-buffer in autocmds)
vim.opt.linebreak = true
vim.opt.breakindent = true

-- Persistent undo (survive restarts)
vim.opt.undofile = true
vim.opt.undolevels = 10000
