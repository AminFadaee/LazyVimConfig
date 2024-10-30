return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    -- set to 1, nvim will open the preview window after entering the Markdown buffer
    vim.g.mkdp_auto_start = 1
    -- set to 1, the nvim will auto close current preview window when changing
    vim.g.mkdp_auto_close = 1
    -- set to 1, Vim will refresh Markdown when saving the buffer or when leaving insert mode.
    vim.g.mkdp_refresh_slow = 1
    -- specify browser to open preview page
    vim.g.mkdp_browser = "/usr/bin/brave-browser"
  end,
}
