return {
  "akinsho/toggleterm.nvim", -- Plugin repository
  version = "*", -- Always get the latest stable version
  config = function()
    -- Setup toggleterm with basic configuration
    require("toggleterm").setup({
      open_mapping = [[<leader>tt]], -- Default key mapping for toggling terminal
      insert_mappings = true, -- Allow key mappings in insert mode
      hide_numbers = true, -- Hide the number column in terminal buffers
      terminal_mappings = true, -- Allow terminal toggling in terminal mode
      autochdir = true, -- Automatically change directory to the current buffer
      start_in_insert = true, -- Start in insert mode
      persist_size = true, -- Remember terminal size across toggles
      direction = "horizontal", -- Default direction for new terminals
      size = function(term) -- Dynamic size based on terminal type
        if term.direction == "horizontal" then
          return 20 -- Height for horizontal terminal
        elseif term.direction == "vertical" then
          return math.floor(vim.o.columns * 0.33) -- 40% of screen width for vertical
        else
          return 20 -- Default size for floating
        end
      end,
      float_opts = {
        border = "curved", -- Border style for floating terminal
      },
      highlights = {
        FloatBorder = {
          guifg = "#000000",
        },
      },
    })

    -- Function to execute selected text in visual mode on the terminal
    function _EXECUTE_VISUAL_IN_TERM()
      local start_pos = vim.fn.getpos("'<")[2]
      local end_pos = vim.fn.getpos("'>")[2]
      local text = vim.fn.getline(start_pos, end_pos)
      require("toggleterm").exec(table.concat(text, "\n"))
    end

    -- Function to toggle all terminals
    function _EXECUTE_VISUAL_IN_TERM()
      local start_pos = vim.fn.getpos("'<")[2]
      local end_pos = vim.fn.getpos("'>")[2]
      local text = vim.fn.getline(start_pos, end_pos)
      require("toggleterm").exec(table.concat(text, "\n"))
    end
    -- Load which-key and use the add method to register key mappings
    local wk = require("which-key")
    wk.add({
      { "<leader>t", group = "Terminal" }, -- This will label <leader>t as "ToggleTerm" in the menu
      {
        "<leader>ts",
        '<Cmd>exe v:count1 . "ToggleTerm direction=horizontal dir=LazyVim.root()"<CR>',
        desc = "Horizontal Terminal",
      },
      { "<leader>tv", '<Cmd>exe v:count1 . "ToggleTerm direction=vertical"<CR>', desc = "Vertical Terminal" },
      { "<leader>tf", '<Cmd>exe v:count1 . "ToggleTerm direction=float"<CR>', desc = "Floating Terminal" },
      { "<leader>tt", '<Cmd>exe v:count1 . "ToggleTerm direction=tab"<CR>', desc = "Tab Terminal" },
      { "<leader>ta", "<cmd>ToggleTermToggleAll<cr>", desc = "Toggle All Terminals" },
    })

    vim.keymap.set(
      "t",
      "<C-/>",
      '<Cmd>exe v:count1 . "ToggleTerm direction=horizontal"<CR>',
      { noremap = false, silent = true }
    )
    vim.keymap.set("t", "<C-\\>", "<cmd>ToggleTermToggleAll<cr>", { noremap = true, silent = true })
    vim.keymap.set("i", "<C-\\>", "<cmd>ToggleTermToggleAll<cr>", { noremap = true, silent = true })
    vim.keymap.set("v", "<C-\\>", "<cmd>ToggleTermToggleAll<cr>", { noremap = true, silent = true })
    vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTermToggleAll<cr>", { noremap = true, silent = true })
    vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
  end,
}
