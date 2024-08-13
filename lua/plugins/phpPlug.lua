-- ~/.config/nvim/lua/plugins/plugins.lua

return {
  -- Blade syntax highlighting
  {
    "jwalton512/vim-blade",
    config = function()
      -- Optionally configure vim-blade here if needed
    end,
    ft = { "blade" }, -- Use 'ft' for filetype-specific loading
  },

  -- PHP formatting support
  {
    "stephpy/vim-php-cs-fixer",
    ft = { "php", "blade" }, -- Load for PHP and Blade filetypes
  },

  -- HTML5 support
  {
    "othree/html5.vim",
    ft = { "html", "blade" }, -- Load for HTML and Blade filetypes
  },

  -- Tree-sitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "php",
        "html",
      })
    end,
  },

  -- LSP configuration for PHP
  {
    "neovim/nvim-lspconfig",
    dependencies = { "phpactor/phpactor" },
    opts = {
      servers = {
        phpactor = {},
      },
    },
  },
}
