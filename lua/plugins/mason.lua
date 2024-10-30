return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "mypy",
      "ruff",
      "isort",
      "typescript-language-server",
      "tailwindcss-language-server",
      "eslint-lsp",
      "prettierd",
      "biome",
    },
  },
}
