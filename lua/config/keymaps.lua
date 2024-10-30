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
