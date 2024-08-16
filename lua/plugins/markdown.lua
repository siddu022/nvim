-- ~/.config/nvim/lua/plugins.lua
return {
  -- other plugins
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && npm install",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
}

