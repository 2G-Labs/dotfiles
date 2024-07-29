-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local g = vim.g

-- Status bar
opt.showcmd = true
opt.showmode = false
opt.ruler = false
opt.laststatus = 3

-- Spell Check
opt.spelllang = "en_us"

-- Indenting
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true

-- Folds
opt.foldlevelstart = 3
opt.fillchars = { eob = " ", fold = " ", foldopen = "", foldsep = " ", foldclose = "" }
opt.foldmethod = "expr" -- Uses treesitter to create folds
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Find/Replace
opt.ignorecase = true
opt.smartcase = true
opt.list = true

-- Editor
opt.wrap = false
opt.number = true
opt.numberwidth = 2
opt.cursorline = false
opt.colorcolumn = "120"
opt.signcolumn = "yes:2"
opt.splitbelow = true
opt.splitright = true
opt.scrolloff = 4
opt.sidescrolloff = 10
opt.listchars = { tab = "  ", trail = "·", extends = "…", precedes = "«", nbsp = "×" } -- ,eol:↴
-- Misc
opt.termguicolors = true

opt.updatetime = 250 -- interval for writing swap file to disk, also used by gitsigns
opt.pumblend = 15
opt.timeoutlen = 400 -- Timeout for keystrokes
opt.mouse = "a"
opt.shortmess:append("sI") -- disable nvim intro
opt.whichwrap:append("<>[]") -- use left right arrow keys to move next prev line when on beginning of the line
g.mapleader = " " -- use space as the Leader key
--
-- -- disable some builtin vim plugins
-- local default_plugins = {
--     "2html_plugin",
--     "getscript",
--     "getscriptPlugin",
--     "gzip",
--     "logipat",
--     "netrw",
--     "netrwPlugin",
--     "netrwSettings",
--     "netrwFileHandlers",
--     "matchit",
--     "tar",
--     "tarPlugin",
--     "rrhelper",
--     "spellfile_plugin",
--     "vimball",
--     "vimballPlugin",
--     "zip",
--     "zipPlugin",
--     "tutor",
--     "rplugin",
--     "syntax",
--     "synmenu",
--     "optwin",
--     "compiler",
--     "bugreport",
--     "ftplugin",
-- }
--
-- for _, plugin in pairs(default_plugins) do
--     g["loaded_" .. plugin] = 1
-- end
--
-- -- disable some providers that we don't use
-- local default_providers = {
--     "node",
--     "perl",
--     "python3",
--     "ruby",
-- }
-- for _, provider in ipairs(default_providers) do
--     vim.g["loaded_" .. provider .. "_provider"] = 0
-- end
--
-- Set signs for the Diagnostics
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
