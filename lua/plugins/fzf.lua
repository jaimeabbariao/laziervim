return {
  {
    "ibhagwan/fzf-lua",
    config = function()
      require("fzf-lua").setup({
        winopts = {
          height = 0.5,
          width = 1,
          row = 1,
          col = 1,
          backdrop = 100,
          fullscreen = false,
        },
        files = {
          git_icons = false,
        },
        grep = {
          rg_glob = true,
          glob_flag = "--iglob",
          glob_separator = "%s%-%-",
        },
      })
    end,
  },
}
