-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufRead", {
  pattern = "notes.txt",
  desc = "Set foldmethod for my notes.txt file",
  callback = function()
    print("Folding notes.txt")
    vim.opt.foldmethod = "indent"
    vim.opt.foldlevel = 0
  end,
})

-- I think this turns off Spell for txt files.
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
