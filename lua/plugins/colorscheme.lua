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
    -- lazy = false,
    -- priority = 1000,
    enabled = false,
    config = function()
      require("cobalt").setup({
        overrides = function()
          return {
            NormalFloat = { bg = "#002240", fg = "#FFFFFF" },
            FloatBorder = { bg = "#002240", fg = "#FFFFFF" },
            FloatTitle = { bg = "#002240", fg = "#FFFFFF" },
            ["@lsp.mod.readonly.typescript"] = { fg = "#FFFFFF" },
          }
        end,
      })
      -- vim.cmd([[colorscheme cobalt]])
    end,
  },
  {
    "mellow-theme/mellow.nvim",
    enabled = false,
    config = function()
      -- vim.cmd([[colorscheme mellow]])
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = false,
          transparency = false,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        palette = {
          -- Override the builtin palette per variant
          -- moon = {
          --     base = '#18191a',
          --     overlay = '#363738',
          -- },
        },

        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- VertSplit = { fg = "muted", bg = "muted" },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          if highlight.undercurl then
            highlight.undercurl = false
          end
        end,
      })

      vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,
  },
}
