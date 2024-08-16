-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- In your LazyVim configuration file (e.g., `~/.config/nvim/lua/user/config.lua`)

-- Set up the keybinding for Markdown Preview
vim.api.nvim_set_keymap('n', '<Space>m', ':MarkdownPreview<CR>',
  { noremap = true, silent = true, desc = 'Start Markdown Preview' })

-- Configure Neovim to use LazyGit
vim.api.nvim_set_keymap('n', '<Leader>gg', ':term lazygit<CR>', { noremap = true, silent = true })


-- Copy to clipboard when pressing `y`
vim.api.nvim_set_keymap('n', 'y', '"+y', { noremap = true, silent = true })

-- Switch from insert mode to normal mode when pressing `jj`
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('i', '<C-u>', '<C-w>', { noremap = true, silent = true })
