-- bootstrap lazy.nvim, LazyVim, and your plugins
require("config.lazy")

-- Set cursor shapes for different modes
vim.opt.guicursor = {
  "n:block", -- Normal mode: block cursor
  "i:ver100-blinkon100", -- Insert mode: underline cursor
  "v:ver100", -- Visual mode: vertical bar cursor
  "c:blinkon0", -- Command-line mode: default
}
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  command = "setlocal formatoptions-=cro",
})
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  command = "setlocal formatoptions-=cro",
})

-- Enable autosave
vim.cmd([[
  augroup autosave
    autocmd!
    autocmd TextChanged,TextChangedI * silent! write
  augroup END
]])
