local api = vim.api
local g = vim.g
local opt = vim.opt

local conf = {
  noremap = true,
  silent = true,
}

api.nvim_set_keymap("", "<Space>", "<Nop>", conf)
g.mapleader = " "
g.maplocalleader = " "

api.nvim_set_keymap("n", "<Leader>s", ":w<CR>", conf)
api.nvim_set_keymap("n", "<Leader>q", ":q<CR>", conf)
api.nvim_set_keymap("n", "<Leader>Q", ":qa<CR>", conf)

api.nvim_set_keymap("n", "<Leader>j", ":wincmd j<CR>", conf)
api.nvim_set_keymap("n", "<Leader>k", ":wincmd k<CR>", conf)
api.nvim_set_keymap("n", "<Leader>l", ":wincmd l<CR>", conf)
api.nvim_set_keymap("n", "<Leader>h", ":wincmd h<CR>", conf)
api.nvim_set_keymap("n", "<Leader>e", ":bn<CR>", conf)
api.nvim_set_keymap("n", "<Leader>q", ":bN<CR>", conf)
api.nvim_set_keymap("n", "<Leader>d", ":bd<CR>", conf)

api.nvim_set_keymap("n", "<Leader>go", ":GitDiff<CR>", conf)
api.nvim_set_keymap("n", "<Leader>gq", ":GitDiffClose<CR>", conf)

api.nvim_set_keymap("n", "<Leader>t", ":10sp term://bash<CR>a", conf)
api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", conf)

api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", conf)

opt.termguicolors = true

opt.hlsearch = true
api.nvim_set_keymap("n", "<Esc>", ":noh<CR>", conf)

opt.number = true
opt.ignorecase = true
opt.breakindent = true
opt.splitbelow = true
opt.splitright = true
opt.signcolumn = "yes"
opt.mouse = ""
opt.timeout = false
opt.backup = false
opt.writebackup = false
opt.updatetime = 300

