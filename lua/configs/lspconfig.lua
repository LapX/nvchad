require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "tailwindcss", "volar", "pyright", "svelte" }
vim.lsp.enable(servers)
