vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.wrap = false
vim.opt.clipboard = "unnamed"
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
require("config.remaps")
