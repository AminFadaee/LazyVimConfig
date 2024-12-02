-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

wk.add({
  { "<leader>v", group = "View" },
  { "<leader>vm", "<cmd>MarkdownPreview<cr>", desc = "Preview Markdown" },
})

wk.add({
  { "<leader>cd", "<cmd>Lspsaga goto_definition<cr>", desc = "Go To Definition" },
  { "<leader>co", "<cmd>Lspsaga outline<cr>", desc = "Outline" },
  { "<leader>cf", "<cmd>Lspsaga finder<cr>", desc = "Lsp Finder" },
})

wk.add({
  { "<leader>l", group = "Lspsaga" },
  { "<leader>lc", "<cmd>Lspsaga code_action<cr>", desc = "Code Action" },
  { "<leader>ld", "<cmd>Lspsaga goto_definition<cr>", desc = "Lsp GoTo Definition" },
  { "<leader>lf", "<cmd>Lspsaga finder<cr>", desc = "Lsp Finder" },
  { "<leader>lo", "<cmd>Lspsaga outline<cr>", desc = "Outline" },
  { "<leader>lp", "<cmd>Lspsaga preview_definition<cr>", desc = "Preview Definition" },
  { "<leader>lr", "<cmd>Lspsaga rename<cr>", desc = "Rename" },
  { "<leader>ls", "<cmd>Lspsaga signature_help<cr>", desc = "Signature Help" },
  { "<leader>lw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", desc = "Show Workspace Diagnostics" },
})

wk.add({
  { "<leader>g", group = "Git" },
  { "<leader>go", "<cmd>OpenInGHFileLines<cr>", desc = "Open line on GitHub" },
  { "<leader>gO", "<cmd>OpenInGHFile<cr>", desc = "Open file on GitHub" },
  { "<leader>gR", "<cmd>OpenInGHRepo<cr>", desc = "Open Repo on GitHub" },
  { "<leader>gA", "<cmd>OpenRepoActions<cr>", desc = "Open Repo's Actions page on GitHub" },
})
