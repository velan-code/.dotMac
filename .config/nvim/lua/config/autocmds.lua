-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Transparent off/on command
local is_transparent = true
vim.api.nvim_create_user_command("Transparency", function()
	--Switch value for act as toggle
	is_transparent = not is_transparent
	require("gruvbox").setup({
		transparent_mode = is_transparent,
	})

	vim.cmd("colorscheme gruvbox") -- Reload apply changes through CMD

	-- tabLine Transparency
	vim.api.nvim_set_hl(0, "TabLine", { bg = "none", fg = "white" })
	vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
	vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", fg = "cyan", bold = true })
	-- Message the panel for to check mode
	if is_transparent then
		print("Transparency is on")
	else
		print("Transparency is off")
	end
end, {})
