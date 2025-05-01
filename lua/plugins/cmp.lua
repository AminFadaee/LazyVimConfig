return {
  "Saghen/blink.cmp",
  opts = {
    enabled = function()
      if vim.bo.filetype ~= "python" then
        return true
      end
      local line = vim.api.nvim_get_current_line()
      local col = vim.api.nvim_win_get_cursor(0)[2]
      local char_before = line:sub(col, col)
      return char_before ~= ":"
    end,
  },
}
