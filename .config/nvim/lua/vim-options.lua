-- ~/.config/nvim/vim-options.lua
----------------------------------------------

-- setup mapleader and maplocalleader before loading lazy.nvim so mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- setup other settings (vim.opt)
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.api.nvim_command('set noexpandtab')
vim.opt.shiftwidth = 4

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = false
vim.opt.smartcase = true
vim.opt.equalalways = true
vim.opt.termguicolors = true
vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.cursorline = false
vim.opt.clipboard = "unnamedplus" -- use system clipboard when yanking and pasting

vim.api.nvim_command('autocmd BufEnter *.tpp :setlocal filetype=cpp') -- tpp filetype
vim.api.nvim_command('autocmd BufEnter *.lua.test :setlocal filetype=lua') -- awesome config test

