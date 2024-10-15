return {
  {
    "SmiteshP/nvim-navic",
    lazy = true,
    init = function()
      vim.g.navic_silence = true
      LazyVim.lsp.on_attach(function(client, buffer)
        if client.supports_method("textDocument/documentSymbol") then
          require("nvim-navic").attach(client, buffer)
        end
      end)
    end,
    config = function()
      local nightfox_lualine_blue = "#131A24"
      -- TODO: Figure out why this doesn't work as expected
      local nightfox_lualine_yellow = "#DAC073"
      local navic_highlight = {
        "NavicIconsFile",
        "NavicIconsModule",
        "NavicIconsNamespace",
        "NavicIconsPackage",
        "NavicIconsClass",
        "NavicIconsMethod",
        "NavicIconsProperty",
        "NavicIconsField",
        "NavicIconsConstructor",
        "NavicIconsEnum",
        "NavicIconsInterface",
        "NavicIconsFunction",
        "NavicIconsVariable",
        "NavicIconsConstant",
        "NavicIconsString",
        "NavicIconsNumber",
        "NavicIconsBoolean",
        "NavicIconsTypeParameter",
        "NavicIconsArray",
        "NavicIconsKey",
        "NavicIconsObject",
        "NavicIconsStruct",
        "NavicIconsEnumMember",
        "NavicIconsNull",
        "NavicIconsEvent",
        "NavicIconsOperator",
        "NavicText",
        "NavicSeparator",
      }

      local function set_navic_bg_color(bg_color, fg_color)
        for _, highlight in ipairs(navic_highlight) do
          vim.api.nvim_set_hl(0, highlight, { default = true, bg = bg_color, fg = fg_color })
        end
      end

      set_navic_bg_color(nightfox_lualine_blue, nightfox_lualine_yellow)
    end,
    opts = function()
      return {
        separator = " > ",
        highlight = true,
        depth_limit = 5,
        icons = {
          File = " ",
          Module = " ",
          Namespace = " ",
          Package = " ",
          Class = " ",
          Method = " ",
          Property = " ",
          Field = " ",
          Constructor = " ",
          Enum = " ",
          Interface = " ",
          Function = " ",
          Variable = " ",
          Constant = " ",
          String = " ",
          Number = " ",
          Boolean = " ",
          Array = " ",
          Object = " ",
          Key = " ",
          Null = " ",
          EnumMember = " ",
          Struct = " ",
          Event = " ",
          Operator = " ",
          TypeParameter = " ",
        },
        lazy_update_context = true,
        depth_limit_indicator = "..",
      }
    end,
  },
}
