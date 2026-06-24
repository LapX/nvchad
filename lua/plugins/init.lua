return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
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
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "svelte",
        "rust",
      },
    },
  },

  -- {
  --   "github/copilot.vim",
  --   event = "InsertEnter",
  --   cmd = "Copilot",
  --   config = function()
  --     -- Disable default mappings
  --     vim.g.copilot_no_tab_map = true
  --     vim.keymap.set("i", "<C-e>", 'copilot#Accept("<CR>")', {
  --       expr = true,
  --       silent = true,
  --     })
  --     vim.keymap.set("i", "<C-j>", "<Plug>(copilot-next)")
  --     vim.keymap.set("i", "<C-k>", "<Plug>(copilot-previous)")
  --   end,
  -- },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
      "vue",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewFileHistory",
      "DiffviewClose",
      "DiffviewToggleFiles",
      "DiffviewFocusFiles",
      "DiffviewRefresh",
    },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Git diff view" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "Git file history" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<CR>", desc = "Git branch history" },
      { "<leader>gq", "<cmd>DiffviewClose<CR>", desc = "Git diff close" },
    },
  },
}
