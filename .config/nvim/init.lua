-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("mini.surround").setup()

--  The main background of the tab line
vim.api.nvim_set_hl(0, "TabLine", { bg = "none", fg = "white" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = "cyan", bold = true })

vim.g.python3_host_prog = "/usr/bin/python3"
--[[require("nvim-treesitter").setup({
  ensure_installed = { "python", "bash" },
  highlight = {
    enable = true,
  },
})
]]
