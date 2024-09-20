-- Define your plugins here
return {
  -- LSP configuration plugin
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Example LSP setup for Python
      require("lspconfig").pyright.setup({})

      -- Rust Analyzer setup (with manually installed binary)
      require("lspconfig").rust_analyzer.setup({
        cmd = { "/home/siddu/.local/bin/rust-analyzer" }, -- Path to the manually installed rust-analyzer
        -- Add additional configurations here, e.g., root_dir, settings, etc.
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true, -- Example: Configure Cargo to use all features
            },
            checkOnSave = {
              command = "clippy", -- Example: Run Clippy on save
            },
          },
        },
      })
    end,
  },

  -- Treesitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Use 'build' instead of deprecated 'run'
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true, -- Enable syntax highlighting
          additional_vim_regex_highlighting = false, -- Disable Vim's regex-based highlighting
        },
        -- Optionally, you can add ensure_installed to specify the languages
        -- ensure_installed = { "rust", "python", "html", "css" },
      })
    end,
  },

  -- Emmet plugin for HTML/CSS abbreviation expansion
  {
    "mattn/emmet-vim",
    config = function()
      -- Example configuration for emmet-vim if needed
      vim.g.user_emmet_leader_key = "<C-Z>" -- Set <C-Z> as the Emmet leader key
    end,
  },
}
