return {
  {
    "aktersnurra/no-clown-fiesta.nvim",
    -- priority = 1000,
    -- lazy = false,
    enabled = false,
    config = function()
      require("no-clown-fiesta").setup()
      -- vim.cmd([[colorscheme no-clown-fiesta]])
    end,
  },
  {
    "fenetikm/falcon",
    -- lazy = false,
    -- priority = 1000,
    enabled = false,
    -- config = function()
    --   vim.cmd([[colorscheme falcon]])
    -- end,
  },
  {
    "wurli/cobalt.nvim",
    lazy = false,
    priority = 1000,
    -- enabled = false,
    config = function()
      require("cobalt").setup({
        overrides = function()
          return {
            NormalFloat = { bg = "#002240", fg = "#FFFFFF" },
            FloatBorder = { bg = "#002240", fg = "#FFFFFF" },
            FloatTitle = { bg = "#002240", fg = "#FFFFFF" },
          }
        end,
      })
      vim.cmd([[colorscheme cobalt]])
    end,
  },
  {
    "mellow-theme/mellow.nvim",
    enabled = false,
    config = function()
      -- vim.cmd([[colorscheme mellow]])
    end,
  },
}
