-- Flutter for nvim plugin
return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup(
      {
        widget_guides = { enabled = true },
        decorations = { statusline = { device = true } },
        lsp = { color = { enabled = true } },
        hot_reload_on_save = true,
      },
    )
  end,
}
