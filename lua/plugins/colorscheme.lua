return {
  {
    "aktersnurra/no-clown-fiesta.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("no-clown-fiesta").setup()
      vim.cmd([[colorscheme no-clown-fiesta]])
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
}
