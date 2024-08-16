-- ~/.config/nvim/lua/plugins.lua

return {
  -- other plugins
  {
    "github/copilot.vim",
    config = function()
      -- Set keybindings and configurations here if needed
      vim.api.nvim_set_keymap("i", "<Right>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
      vim.g.copilot_no_tab_map = true
    end,
  },
}
