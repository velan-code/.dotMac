-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- "jk" for Escape
map({ "i", "v" }, "jk", "<Esc>")

-- Use <leader>F (Shift + F) for Flutter to avoid LazyVim's <leader>f (files)
map("n", "<leader>Fs", "<cmd>FlutterRun<cr>", { desc = "Flutter: Start" })
map("n", "<leader>Fr", "<cmd>FlutterReload<cr>", { desc = "Flutter: Hot Reload" })
map("n", "<leader>FR", "<cmd>FlutterRestart<cr>", { desc = "Flutter: Hot Restart" })
map("n", "<leader>Fq", "<cmd>FlutterQuit<cr>", { desc = "Flutter: Quit" })
map("n", "<leader>Fv", "<cmd>FlutterDevices<cr>", { desc = "Flutter: Devices" })
map("n", "<leader>Fe", "<cmd>FlutterEmulators<cr>", { desc = "Flutter: Emulators" })
map("n", "<leader>Fo", "<cmd>FlutterOutlineToggle<cr>", { desc = "Flutter: Outline" })
map("n", "<leader>Fl", "<cmd>FlutterLogClear<cr>", { desc = "Flutter: Clear Log" })
map("n", "<leader>Fd", "<cmd>FlutterVisualDebug<cr>", { desc = "Flutter: Visual Debug" })

local ok, wk = pcall(require, "which-key")
if ok then
    wk.add({
        { "<leader>F", group = "flutter" },
    })
end
