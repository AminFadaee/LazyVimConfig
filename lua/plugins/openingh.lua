return {
  "Almo7aya/openingh.nvim",
  config = function()
    require("openingh")

    local function open_actions_page()
      local repo_url = vim.fn.system("git config --get remote.origin.url")
      repo_url = repo_url:gsub("\n", "") -- Remove any trailing newline

      if not repo_url or repo_url == "" then
        vim.notify("No remote repository found!", vim.log.levels.ERROR)
        return
      end

      repo_url = repo_url:gsub("git@github.com:", "https://github.com/"):gsub("%.git$", "")

      local actions_url = repo_url .. "/actions"

      vim.fn.system(string.format("xdg-open '%s' || open '%s' || start '%s'", actions_url, actions_url, actions_url))
      vim.notify("Opening GitHub Actions page: " .. actions_url)
    end

    vim.api.nvim_create_user_command("OpenRepoActions", open_actions_page, { nargs = 0 })
  end,
}
