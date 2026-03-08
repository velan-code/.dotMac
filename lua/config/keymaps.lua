-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- "jk" for Escape
map({ "i", "v" }, "jk", "<Esc>")

-- Flutter Commands
map("n", "<leader>fc", "<cmd>FlutterLogClear<cr>", { desc = "Clear Flutter Logs" })
map("n", "<leader>fe", "<cmd>FlutterEmulators<cr>", { desc = "List Emulators" })
map("n", "<leader>fg", "<cmd>FlutterGenerate<cr>", { desc = "Pub run build_runner" })
map("n", "<leader>fo", "<cmd>FlutterOutlineOpen<cr>", { desc = "Open Flutter Outline" })
map("n", "<leader>fq", "<cmd>FlutterQuit<cr>", { desc = "Quit Flutter Session" })

-- The "Big Two"
map("n", "<leader>fr", "<cmd>FlutterReload<cr>", { desc = "Hot Reload" })
map("n", "<leader>fR", "<cmd>FlutterRestart<cr>", { desc = "Hot Restart" })

-- Run/Select Device
map("n", "<leader>fs", "<cmd>FlutterRun<cr>", { desc = "Start Flutter" })
map("n", "<leader>fv", "<cmd>FlutterDevices<cr>", { desc = "Select Device/View" })

-- Toggle Visual Debugging
map("n", "<leader>fd", "<cmd>FlutterVisualDebug<cr>", { desc = "Toggle Visual Debug" })
map("n", "<leader>fh", "<cmd>FlutterRebind<cr>", { desc = "Rebind DevTools" })
map("n", "<leader>fp", "<cmd>FlutterLspRestart<cr>", { desc = "Restart Flutter LSP" })
