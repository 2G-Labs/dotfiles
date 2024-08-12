-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Identify the CMake Filetype
vim.api.nvim_command("autocmd BufRead,BufNewFile CMakeFiles.txt set filetype=cmake")
