return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
   { import = "nvchad.blink.lazyspec" },

   {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css"
   		},
   	},
   },

  {
    "github/copilot.vim",
    event = "InsertEnter",
    cmd = "Copilot",
    config = function()
      -- Disable default mappings
      vim.g.copilot_no_tab_map = true
      vim.keymap.set('i', '<A-l>', 'copilot#Accept("<CR>")', {
        expr = true,
        silent = true
      })
      vim.keymap.set('i', '<A-j>', '<Plug>(copilot-next)')
      vim.keymap.set('i', '<A-k>', '<Plug>(copilot-previous)')
    end,
  }
}
